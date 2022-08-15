package com.lobster.tobebraverman.entity;

import com.lobster.tobebraverman.exception.BusinessMsgEnum;

/**
 * 统一返回对象
 * @param <T>
 */

public class JsonResult<T> {

    private T data;
    private String code;
    private String msg;

    public JsonResult() {
        this.code = "0";
        this.msg = "操作成功!";
    }

    public JsonResult(String code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public JsonResult(T data) {
        this.data = data;
        this.code = "0";
        this.msg = "操作成功!";
    }

    public JsonResult(T data, String msg) {
        this.data = data;
        this.code = "0";
        this.msg = msg;
    }

    /**
     * 使用自定义异常作为参数传递状态码和提示信息
     * @param msgEnum
     */
    public JsonResult(BusinessMsgEnum msgEnum) {
        this.code = msgEnum.getCode();
        this.msg = msgEnum.getMsg();
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

}
