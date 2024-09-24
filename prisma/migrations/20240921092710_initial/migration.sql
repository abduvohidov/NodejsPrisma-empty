/*
  Warnings:

  - You are about to drop the column `dateEnd` on the `City` table. All the data in the column will be lost.
  - You are about to drop the column `dateStart` on the `City` table. All the data in the column will be lost.
  - You are about to drop the column `location` on the `City` table. All the data in the column will be lost.
  - You are about to drop the column `email` on the `Country` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "City" DROP COLUMN "dateEnd",
DROP COLUMN "dateStart",
DROP COLUMN "location";

-- AlterTable
ALTER TABLE "Country" DROP COLUMN "email";
