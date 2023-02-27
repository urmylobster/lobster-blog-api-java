package com.lobster.tobebraverman.entity;

import lombok.Builder;
import lombok.Data;
import lombok.experimental.Tolerate;

@Data
@Builder
public class Posts {

    @Tolerate
    public Posts() {}

    private Long postId;
    private String postAuthor;
    private String postTitle;
    private String postContent;
    private String postDate;
}
