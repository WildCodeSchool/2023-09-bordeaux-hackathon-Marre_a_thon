<?php

namespace App\Model;

class ArticleManager extends AbstractManager
{
    public function selectAllMovies(): array
    {
        $query = "SELECT * FROM movies";
        $statement = $this->pdo->prepare($query);
        $statement->execute();
        return $statement->fetchAll();
    
    }
    public function selectAllGifts(): array
    {
        $query = "SELECT * FROM gifts";
        $statement = $this->pdo->prepare($query);
        $statement->execute();
        return $statement->fetchAll();

    }
    public function selectAllRecipes(): array
    {
        $query = "SELECT * FROM recipes";
        $statement = $this->pdo->prepare($query);
        $statement->execute();
        return $statement->fetchAll();
    }
    public function selectAllActivities(): array
    {
        $query = "SELECT * FROM activities";
        $statement = $this->pdo->prepare($query);
        $statement->execute();
        return $statement->fetchAll();
    }
    public function selectAllTest(): array
    {
        $query = "SELECT * FROM item";
        $statement = $this->pdo->prepare($query);
        $statement->execute();
        return $statement->fetchAll();
    }

}