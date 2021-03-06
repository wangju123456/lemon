

-------------------------------------------------------------------------------
--  sku info
-------------------------------------------------------------------------------
CREATE TABLE SKU_INFO(
    ID BIGINT NOT NULL,

    CODE VARCHAR(100),
    NAME VARCHAR(100),
    STYLE VARCHAR(50),
    MODEL VARCHAR(50),
    COLOR VARCHAR(50),
    SIZE VARCHAR(50),

    PRODUCT_CATEGORY VARCHAR(100),
    PURPOSE VARCHAR(100),
    PRODUCT_NAME VARCHAR(200),
    PRODUCT_MODEL VARCHAR(50),
    PRODUCT_PRICE INT,
    PRODUCT_NUM INT,
    DESCRIPTION VARCHAR(200),
    TENANT_ID VARCHAR(64),
    CATEGORY_ID BIGINT,

    CONSTRAINT PK_SKU_INFO PRIMARY KEY(ID),
    CONSTRAINT FK_SKU_INFO_CATEGORY FOREIGN KEY(CATEGORY_ID) REFERENCES SKU_CATEGORY(ID)
);

COMMENT ON TABLE SKU_INFO IS 'sku信息';
COMMENT ON COLUMN SKU_INFO.ID IS '主键';
COMMENT ON COLUMN SKU_INFO.CODE IS '编码';
COMMENT ON COLUMN SKU_INFO.NAME IS '名称';
COMMENT ON COLUMN SKU_INFO.STYLE IS '样式';
COMMENT ON COLUMN SKU_INFO.MODEL IS '型号';
COMMENT ON COLUMN SKU_INFO.COLOR IS '颜色';
COMMENT ON COLUMN SKU_INFO.SIZE IS '号码';
COMMENT ON COLUMN SKU_INFO.DESCRIPTION IS '备注';
COMMENT ON COLUMN SKU_INFO.TENANT_ID IS '租户';
COMMENT ON COLUMN SKU_INFO.CATEGORY_ID IS '外键，分类';

