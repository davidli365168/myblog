package com.david.blog.entity.vo;

public class BlogQuery {
    private String title;
    private Long categoryId;
    private boolean recommendStatus;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Long categoryId) {
        this.categoryId = categoryId;
    }

    public boolean isRecommendStatus() {
        return recommendStatus;
    }

    public void setRecommendStatus(boolean recommendStatus) {
        this.recommendStatus = recommendStatus;
    }
}

