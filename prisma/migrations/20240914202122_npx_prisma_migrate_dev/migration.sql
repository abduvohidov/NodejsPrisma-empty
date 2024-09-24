/*
  Warnings:

  - Added the required column `updatedAt` to the `City` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `dateStart` on the `City` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `dateEnd` on the `City` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "City" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL,
DROP COLUMN "dateStart",
ADD COLUMN     "dateStart" TIMESTAMP(3) NOT NULL,
DROP COLUMN "dateEnd",
ADD COLUMN     "dateEnd" TIMESTAMP(3) NOT NULL;

-- CreateTable
CREATE TABLE "Attendee" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Attendee_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_AttendeeToCity" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_AttendeeToCity_AB_unique" ON "_AttendeeToCity"("A", "B");

-- CreateIndex
CREATE INDEX "_AttendeeToCity_B_index" ON "_AttendeeToCity"("B");

-- AddForeignKey
ALTER TABLE "_AttendeeToCity" ADD CONSTRAINT "_AttendeeToCity_A_fkey" FOREIGN KEY ("A") REFERENCES "Attendee"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_AttendeeToCity" ADD CONSTRAINT "_AttendeeToCity_B_fkey" FOREIGN KEY ("B") REFERENCES "City"("id") ON DELETE CASCADE ON UPDATE CASCADE;
