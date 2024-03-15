-- Passo 2: Altere o tipo de dados da coluna user_rating para FLOAT temporariamente
ALTER TABLE AppleStore.dbo.AppleStore
ALTER COLUMN user_rating FLOAT;

-- Passo 3: Atualize os valores na coluna user_rating para remover quaisquer decimais
UPDATE AppleStore.dbo.AppleStore
SET user_rating = CAST(user_rating AS INT);

-- Passo 4: Altere o tipo de dados da coluna user_rating para INT
ALTER TABLE AppleStore.dbo.AppleStore
ALTER COLUMN user_rating INT;