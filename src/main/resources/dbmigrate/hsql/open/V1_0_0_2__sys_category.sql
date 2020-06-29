

-------------------------------------------------------------------------------
--  sys category
-------------------------------------------------------------------------------
CREATE TABLE SYS_CATEGORY(
    ID BIGINT NOT NULL,
    CODE VARCHAR(50),
    NAME VARCHAR(50),
	LOGO VARCHAR(200),
    PRIORITY INTEGER,
    STATUS VARCHAR(50),
    DESCN VARCHAR(200),
	CREATE_TIME TIMESTAMP,
	USER_ID VARCHAR(64),
    PARENT_ID BIGINT,

    TENANT_ID VARCHAR(64),

    CONSTRAINT PK_SYS_CATEGORY PRIMARY KEY(ID),
    CONSTRAINT FK_SYS_CATEGORY_PARENT FOREIGN KEY(PARENT_ID) REFERENCES SYS_CATEGORY(ID)
);

COMMENT ON TABLE SYS_CATEGORY IS '系统分类';
COMMENT ON COLUMN SYS_CATEGORY.ID IS '主键';
COMMENT ON COLUMN SYS_CATEGORY.CODE IS '编码';
COMMENT ON COLUMN SYS_CATEGORY.NAME IS '名称';
COMMENT ON COLUMN SYS_CATEGORY.LOGO IS '图标';
COMMENT ON COLUMN SYS_CATEGORY.PRIORITY IS '排序';
COMMENT ON COLUMN SYS_CATEGORY.STATUS IS '状态';
COMMENT ON COLUMN SYS_CATEGORY.DESCN IS '备注';
COMMENT ON COLUMN SYS_CATEGORY.CREATE_TIME IS '创建时间';
COMMENT ON COLUMN SYS_CATEGORY.USER_ID IS '创建人';
COMMENT ON COLUMN SYS_CATEGORY.PARENT_ID IS '外键，上级分类';
COMMENT ON COLUMN SYS_CATEGORY.TENANT_ID IS '租户';

