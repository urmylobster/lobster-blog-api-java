package com.lobster.tobebraverman.entity;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Posts {

    private Long postsId;
    private String postAuthor;
    private String postTitle;
    private String postContent;
}
