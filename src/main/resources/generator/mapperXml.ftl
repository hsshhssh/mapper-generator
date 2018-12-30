<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="${mapperPackage}.${tableClass.shortClassName}${mapperSuffix}">

    <resultMap id="BaseResultMap" type="${tableClass.fullClassName}">
        <#list tableClass.pkFields as field>
            <id column="${field.fieldName}" property="${field.columnName}" jdbcType="${field.jdbcType}"></id>
        </#list>
        <#list tableClass.baseFields as field>
            <result column="${field.columnName}" property="${field.fieldName}" jdbcType="${field.jdbcType}"/>
        </#list>
        <#list tableClass.blobFields as field>
            <result column="${field.columnName}" property="${field.fieldName}" jdbcType="${field.jdbcType}"/>
        </#list>
    </resultMap>

    <sql id="BaseColumn">
        <#list tableClass.allFields as field>
            ${field.columnName}<#if field_has_next>,</#if>
        </#list>
    </sql>

    <sql id="BasicFeildColumn">
        <#list tableClass.allFields as field>
            ${field.fieldName}<#if field_has_next>,</#if>
        </#list>
    </sql>

</mapper>
