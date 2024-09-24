-- CreateTable
CREATE TABLE "City" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "dateStart" TEXT NOT NULL,
    "dateEnd" TEXT NOT NULL,
    "location" TEXT NOT NULL,

    CONSTRAINT "City_pkey" PRIMARY KEY ("id")
);
