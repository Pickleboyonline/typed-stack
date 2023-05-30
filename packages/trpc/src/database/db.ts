import { Kysely, PostgresDialect } from "kysely";
import {DB} from '@typed-stack/database'
import {Pool} from 'pg'


export const db = new Kysely<DB>({
    dialect: new PostgresDialect({
        pool: new Pool({
            // TODO: Add SST config to pull from env variables.
        })
    })
})