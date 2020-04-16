CREATE TABLE refresh(
    Id serial PRIMARY KEY ,
    UserId TEXT,
    Expiration timestamp,
    Token TEXT NOT NULL
);

ALTER TABLE refresh ADD CONSTRAINT user_refresh FOREIGN KEY (UserId) REFERENCES public.users (Login)  ON DELETE CASCADE;
