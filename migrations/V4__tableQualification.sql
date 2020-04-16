CREATE TABLE qualification(
    Id serial PRIMARY KEY,
    UserId TEXT,
    Technology TEXT NOT NULL,
    Stage TEXT NOT NULL,
    ProgressPoints INT,
    FOREIGN KEY (UserId) REFERENCES public.users (Login) ON DELETE CASCADE
);
CREATE TABLE Technology(
    Technology TEXT PRIMARY KEY,
    Description TEXT,
    InternStage INT,
    JuniorStage INT,
    MiddleStage INT,
    SeniorStage INT
);
