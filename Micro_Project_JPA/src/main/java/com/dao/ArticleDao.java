package com.dao;

import java.util.List;

import com.models.Article;

public interface ArticleDao {
  public List<Article> getAllArticles();
  public List<Article> getArticles(String categorie);

}
