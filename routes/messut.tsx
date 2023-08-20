//slkdj
import { Handlers, PageProps } from "$fresh/server.ts";

import { PrismaClient } from "../generated/client/deno/edge.ts";
import { Application, Router } from "https://deno.land/x/oak@v11.1.0/mod.ts";
import { load } from "https://deno.land/std@0.198.0/dotenv/mod.ts";
import { services } from "../generated/client/index.d.ts";

const envVars = await load();

/**
 * Initialize.
 */

const prisma = new PrismaClient({
  datasources: {
    db: {
      url: envVars.DATABASE_URL,
    },
  },
});

//asd
export const handler: Handlers<services[]> = {
  async GET(_req, ctx) {
    // const project = await db.projects.findOne({ id: ctx.params.id });
    const services = await prisma.services.findMany({});
    if (!services) {
      return new Response("Project not found", { status: 404 });
    }
    return ctx.render(services);
  },
};

export default function ProjectPage(props: PageProps<services>) {
  console.log(props.data, "moro");
  return (
    <ul>
      <li>aa</li>
    </ul>
  );
}
