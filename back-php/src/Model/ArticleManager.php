<?php

namespace App\Model;

class ArticleManager extends AbstractManager
{
    public function selectAllMovies(): array
    {
        $query = "SELECT * FROM movies" . ' ORDER BY RAND() LIMIT 1';
        $statement = $this->pdo->prepare($query);
        $statement->execute();
        return $statement->fetchAll();
    
    }
    public function selectAllGifts(): array
    {
        $query = "SELECT * FROM gifts" . ' ORDER BY RAND() LIMIT 1';
        $statement = $this->pdo->prepare($query);
        $statement->execute();
        return $statement->fetchAll();

    }
    public function selectAllRecipes(): array
    {
        $query = "SELECT * FROM recipes" . ' ORDER BY RAND() LIMIT 1';
        $statement = $this->pdo->prepare($query);
        $statement->execute();
        return $statement->fetchAll();
    }
    public function selectAllActivities(): array
    {
        $query = "SELECT * FROM activities" . ' ORDER BY RAND() LIMIT 1';
        $statement = $this->pdo->prepare($query);
        $statement->execute();
        return $statement->fetchAll();
    }
    public function selectAllTest(): array
    {
        $query = "SELECT * FROM item" . ' ORDER BY RAND() LIMIT 1';
        $statement = $this->pdo->prepare($query);
        $statement->execute();
        return $statement->fetchAll();
    }

}