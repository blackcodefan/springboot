CREATE TABLE IF NOT EXISTS dashboard_items
(
    id         varchar(36) primary key,
    item_id    numeric,
    disabled   boolean,
    account_id BIGINT,
    updated_at timestamp DEFAULT now()
);

ALTER TABLE dashboard_items
    ADD CONSTRAINT dashboard_item_acc_fk FOREIGN KEY (account_id) REFERENCES account (id);