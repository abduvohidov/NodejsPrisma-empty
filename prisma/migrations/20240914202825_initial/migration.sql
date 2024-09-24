/*
  Warnings:

  - You are about to drop the column `createdAt` on the `Attendee` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Attendee` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `City` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `City` table. All the data in the column will be lost.
  - You are about to drop the `_AttendeeToCity` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "_AttendeeToCity" DROP CONSTRAINT "_AttendeeToCity_A_fkey";

-- DropForeignKey
ALTER TABLE "_AttendeeToCity" DROP CONSTRAINT "_AttendeeToCity_B_fkey";

-- AlterTable
ALTER TABLE "Attendee" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt";

-- AlterTable
ALTER TABLE "City" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt";

-- DropTable
DROP TABLE "_AttendeeToCity";
