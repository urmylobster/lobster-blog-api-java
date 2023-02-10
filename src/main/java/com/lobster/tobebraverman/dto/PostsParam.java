package com.lobster.tobebraverman.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.constraints.NotBlank;
import lombok.Data;
import java.io.Serializable;

@Data
@ApiModel(value="Posts对象", description="文章")
public class PostsParam implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "post_id")
    private Long postId;

    @ApiModelProperty(value = "标题")
    @NotBlank(message = "标题不能为空")
    private String postTitle;

    @ApiModelProperty(value = "正文")
    @NotBlank(message = "文章内容不能为空")
    private String postContent;

    @ApiModelProperty(value = "作者")
    @NotBlank(message = "作者不能为空")
    private String postAuthor;




}


