--
-- Class Journal as table journal
--

CREATE TABLE "journal" (
  "id" serial,
  "title" text NOT NULL,
  "body" text NOT NULL,
  "date" timestamp without time zone NOT NULL
);

ALTER TABLE ONLY "journal"
  ADD CONSTRAINT journal_pkey PRIMARY KEY (id);


