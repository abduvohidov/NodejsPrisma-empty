/*
  Warnings:

  - You are about to drop the `Attendee` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Attendee";

-- CreateTable
CREATE TABLE "Country" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,

    CONSTRAINT "Country_pkey" PRIMARY KEY ("id")
);
