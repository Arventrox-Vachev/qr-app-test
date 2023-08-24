import { json } from "@remix-run/node";
import { useActionData, useLoaderData } from "@remix-run/react";
import { authenticate } from "~/shopify.server";

const Something = () => {
  const data = useActionData();
  const loaderData = useLoaderData();

  console.log(loaderData);
  return (
    <div>
      <form method="get">
        <button>click</button>
      </form>
    </div>
  );
};
export default Something;

export const action = async ({ request }) => {
  const { admin, session } = await authenticate.admin(request);

  const response = await admin.graphql(`
	  {
		products(first: 25) {
		  nodes {
			title
			description
		  }
		}
	  }`);

  const {
    data: {
      products: { nodes },
    },
  } = await response.json();

  return json(nodes);
};

export async function loader({ request }) {
  const { admin } = await authenticate.admin(request);

  const response = await admin.graphql(`
    {
      products(first: 25) {
        nodes {
          title
          description
        }
      }
    }`);

  const response2 = await admin.graphql(
    `#graphql
  query {
    orders(first: 10) {
      edges {
        node {
          id
        }
      }
    }
  }`
  );

  const {
    data: {
      products: { nodes },
    },
  } = await response.json();

  return json(response2.json());
}
