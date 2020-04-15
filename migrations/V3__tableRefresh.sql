CREATE TABLE refresh(
    Id serial PRIMARY KEY ,
    UserId CHARACTER VARYING(30),
    Expiration timestamp,
    Token CHARACTER VARYING(256)  NOT NULL
);

ALTER TABLE refresh ADD CONSTRAINT user_refresh FOREIGN KEY (UserId) REFERENCES public.users (Login)  ON DELETE CASCADE;
