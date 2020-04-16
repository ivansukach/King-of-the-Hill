CREATE TABLE claim(
    Id serial PRIMARY KEY ,
    UserId TEXT,
    Value TEXT NOT NULL,
    Key TEXT NOT NULL
);

ALTER TABLE claim ADD CONSTRAINT user_claim FOREIGN KEY (UserId) REFERENCES public.users (Login)  ON DELETE CASCADE;

