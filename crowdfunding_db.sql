-- For issues, drop table(s)
DROP TABLE campaign;
DROP TABLE category;
DROP TABLE subcategory;
DROP TABLE contacts;

CREATE TABLE "campaign" (
    "cf_id" int NOT NULL,
    "contact_id" int NOT NULL,
    "company_name" varchar NOT NULL,
    "description" text NOT NULL,
    "goal" numeric NOT NULL,
    "pledged" numeric NOT NULL,
    "outcome" varchar NOT NULL,
    "backers_count" int NOT NULL,
    "country" varchar NOT NULL,
    "currency" varchar NOT NULL,
    "launch_date" date NOT NULL,
    "end_date" date NOT NULL,
    "category_id" varchar NOT NULL,
    "subcategory_id" varchar NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

-- Revisit this: CONSTRAINT "pk_campaign" 
--               PRIMARY KEY ("cf_id")

-- Import using query
COPY campaign FROM 'c:/data/data/crowdfunding.csv'
WITH DELIMITER ',' CSV HEADER;

CREATE TABLE "category" (
	"category_id" varchar NOT NULL,
	"category_name" varchar NOT NULL,
	CONSTRAINT "pk_category" PRIMARY KEY (
		"category_id"
	)
);

CREATE TABLE "subcategory" (
	"subcategory_id" varchar NOT NULL,
	"category_name" varchar NOT NULL,
	CONSTRAINT "pk_subcategory" PRIMARY KEY (
		"subcategory_id"
	)
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar NOT NULL,
    "last_name" varchar NOT NULL,
    "email" varchar NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

SELECT * FROM contacts
SELECT * FROM crowdfunding

ALTER TABLE "crowdfunding" ADD CONSTRAINT "contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "crowdfunding" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "subcategory" ("subcategory_id");