package com.xqh.ad.tkmapper.entity;

import javax.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name = "`ad_ods_idfa_copy_record`")
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class IdfaCopyRecord {
    /**
     * 主键id
     */
    @Id
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 请求参数
     */
    private String request;

    private String fact;

    /**
     * 状态 0创建  1正在插入数据 2待确认 3完成
     */
    private Integer state;

    /**
     * 创建时间
     */
    @Column(name = "create_time")
    private Integer createTime;

    /**
     * 修改时间
     */
    @Column(name = "update_time")
    private Integer updateTime;
}