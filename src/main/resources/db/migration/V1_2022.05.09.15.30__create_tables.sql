create sequence country_seq;

alter sequence country_seq owner to lkt;

create sequence language_seq;

alter sequence language_seq owner to lkt;

create sequence data_center_seq;

alter sequence data_center_seq owner to lkt;

create sequence question_seq;

alter sequence question_seq owner to lkt;

create sequence subscriber_seq;

alter sequence subscriber_seq owner to lkt;

create sequence company_seq;

alter sequence company_seq owner to lkt;

create sequence account_seq;

alter sequence account_seq owner to lkt;

create sequence device_seq;

alter sequence device_seq owner to lkt;

create sequence device_account_seq;

alter sequence device_account_seq owner to lkt;

create sequence decrypt_permission_seq;

alter sequence decrypt_permission_seq owner to lkt;

create sequence encryption_seq;

alter sequence encryption_seq owner to lkt;

create sequence encryption_device_seq;

alter sequence encryption_device_seq owner to lkt;

create sequence email_token_seq;

alter sequence email_token_seq owner to lkt;

create sequence invitation_seq;

alter sequence invitation_seq owner to lkt;

create sequence invitation_notify_seq;

alter sequence invitation_notify_seq owner to lkt;

create sequence operation_seq;

alter sequence operation_seq owner to lkt;

create sequence activity_seq;

alter sequence activity_seq owner to lkt;

create sequence rsa_key_seq;

alter sequence rsa_key_seq owner to lkt;

create sequence key_subscription_seq;

alter sequence key_subscription_seq owner to lkt;

create sequence membership_seq;

alter sequence membership_seq owner to lkt;

create sequence download_prep_sequence;

alter sequence download_prep_sequence owner to lkt;

create sequence temp_session_cache_seq;

alter sequence temp_session_cache_seq owner to lkt;

create sequence billing_product_seq;

alter sequence billing_product_seq owner to lkt;

create sequence pricing_plan_seq;

alter sequence pricing_plan_seq owner to lkt;

create sequence payment_currency_seq;

alter sequence payment_currency_seq owner to lkt;

create sequence billing_address_seq;

alter sequence billing_address_seq owner to lkt;

create sequence payment_seq;

alter sequence payment_seq owner to lkt;

create sequence payment_method_seq;

alter sequence payment_method_seq owner to lkt;

create sequence invoice_seq;

alter sequence invoice_seq owner to lkt;

create sequence invoice_line_item_seq;

alter sequence invoice_line_item_seq owner to lkt;

create sequence session_log_seq;

alter sequence session_log_seq owner to lkt;

create sequence contact_seq;

alter sequence contact_seq owner to lkt;

create sequence contact_address_seq;

alter sequence contact_address_seq owner to lkt;

create sequence contact_group_seq;

alter sequence contact_group_seq owner to lkt;

create sequence contact_group_membership_seq;

alter sequence contact_group_membership_seq owner to lkt;

create sequence contact_option_seq;

alter sequence contact_option_seq owner to lkt;

create sequence decrypt_task_seq;

alter sequence decrypt_task_seq owner to lkt;

create sequence conference_seq;

alter sequence conference_seq owner to lkt;

create sequence conference_member_seq;

alter sequence conference_member_seq owner to lkt;

create sequence timezone_seq;

alter sequence timezone_seq owner to lkt;

create sequence user_login_seq;

alter sequence user_login_seq owner to lkt;

create sequence call_hist_seq;

alter sequence call_hist_seq owner to lkt;

create sequence storage_membership_seq;

alter sequence storage_membership_seq owner to lkt;

create sequence call_history_seq;

alter sequence call_history_seq owner to lkt;

create sequence calendar_seq;

alter sequence calendar_seq owner to lkt;

create sequence calendar_event_seq;

alter sequence calendar_event_seq owner to lkt;

create sequence calendar_event_attachment_seq;

alter sequence calendar_event_attachment_seq owner to lkt;

create sequence calendar_event_member_seq;

alter sequence calendar_event_member_seq owner to lkt;

create sequence calendar_member_seq;

alter sequence calendar_member_seq owner to lkt;

create sequence calendar_holiday_seq;

alter sequence calendar_holiday_seq owner to lkt;

create sequence pgp_sig_seq;

alter sequence pgp_sig_seq owner to lkt;

create sequence signature_seq;

alter sequence signature_seq owner to lkt;

create sequence sig_seq;

alter sequence sig_seq owner to lkt;

create sequence sig_block_seq;

alter sequence sig_block_seq owner to lkt;

create sequence file_sig_seq;

alter sequence file_sig_seq owner to lkt;

create sequence sig_part_seq;

alter sequence sig_part_seq owner to lkt;

create sequence account_subscriptiony_seq;

alter sequence account_subscriptiony_seq owner to lkt;

create table users
(
    username varchar(256) not null
        primary key,
    password varchar(100) not null,
    enabled  boolean      not null
);

alter table users
    owner to lkt;

create table authorities
(
    username  varchar(100) not null
        constraint fk__authorities__username__users__username
            references users,
    authority varchar(50)  not null
);

alter table authorities
    owner to lkt;

create unique index idx__authorities__username__authority
    on authorities (username, authority);

create table country
(
    id            integer default nextval('country_seq'::regclass) not null
        primary key,
    always_vat    boolean                                          not null,
    currency_code varchar(3)                                       not null,
    name          varchar(50)                                      not null,
    prefix_number varchar(5)                                       not null,
    vat_value     numeric(6, 2)                                    not null,
    country_code  varchar(3),
    digits        integer default 9,
    allowed       boolean
);

alter table country
    owner to lkt;

create table language
(
    id           integer    default nextval('language_seq'::regclass) not null
        primary key,
    default_name varchar(50)                                          not null,
    iso_code     varchar(2)                                           not null,
    dir          varchar(3) default 'ltr'::character varying,
    enabled      boolean
);

alter table language
    owner to lkt;

create unique index idx__language__iso_code
    on language (iso_code);

create table data_center
(
    id      integer default nextval('data_center_seq'::regclass) not null
        primary key,
    dc_name varchar(255)                                         not null,
    code    varchar(4)                                           not null,
    dc_path varchar(4096)                                        not null,
    valid   boolean                                              not null
);

alter table data_center
    owner to lkt;

create table subscriber
(
    id                bigint    default nextval('subscriber_seq'::regclass) not null
        primary key,
    address           varchar(256),
    address2          varchar(256),
    answer1           varchar(255),
    answer2           varchar(255),
    answer3           varchar(255),
    birth_date        date,
    city              varchar(256),
    email             varchar(256)                                          not null,
    failed_logins     integer                                               not null,
    first_name        varchar(256)                                          not null,
    language          varchar(2)                                            not null,
    last_name         varchar(256)                                          not null,
    middle_name       varchar(256),
    otp_enabled       boolean                                               not null,
    otp_failed_logins integer                                               not null,
    phone             varchar(95),
    place_of_birth    varchar(35),
    postal_code       varchar(20),
    prefix_number     varchar(5),
    state             varchar(256),
    time_zone         varchar(255),
    title             varchar(256),
    user_blocked      boolean                                               not null,
    country_id        integer
        constraint fk__subscriber__country_id__country__id
            references country,
    created           timestamp default CURRENT_TIMESTAMP                   not null,
    contacts_imported boolean   default false                               not null
);

alter table subscriber
    owner to lkt;

create unique index idx__subscriber__email
    on subscriber (email);

create table company
(
    id                      bigint default nextval('company_seq'::regclass) not null
        primary key,
    address                 varchar(255),
    address2                varchar(255),
    city                    varchar(45),
    company_name            varchar(250),
    employees               integer,
    logo_photo_type         varchar(255),
    position_in_company     varchar(255),
    postal_code             varchar(11),
    registration_number     varchar(30),
    state                   varchar(45),
    vat_id                  varchar(30),
    website                 varchar(255),
    hq_country_id           integer
        constraint fk__company__hq_country_id__country__id
            references country,
    registration_country_id integer
        constraint fk__company__registration_country_id__country__id
            references country,
    subdomain               varchar(250)
);

alter table company
    owner to lkt;

create table account
(
    id                 bigint      default nextval('account_seq'::regclass) not null
        primary key,
    account_role       varchar(255)                                         not null,
    account_status     varchar(255)                                         not null,
    account_type       varchar(255)                                         not null,
    total_keys         integer,
    used_keys          integer,
    verif_token        varchar(255),
    verif_token_expiry timestamp,
    verified           boolean                                              not null,
    verify_token_used  boolean                                              not null,
    company_id         bigint
        constraint fk__account__company_id__company__id
            references company,
    subscriber_id      bigint
        constraint fk__account__subscriber_id__subscriber__id
            references subscriber,
    sms_code           varchar(250),
    activation_code    varchar(250),
    alias_mk           varchar(255),
    certificate_mk     bytea,
    name               varchar(250),
    datacenter         varchar(250),
    reference_id       varchar(255),
    live_status        varchar(10) default 'ACTIVE'::character varying,
    visible            boolean     default true                             not null,
    billing_interval   varchar(10) default 'MONTH'::character varying       not null,
    created            timestamp   default CURRENT_TIMESTAMP                not null,
    picture_type       varchar(10) default 'LETTERS'::character varying,
    account_photo_type varchar(20),
    avatar_path        varchar(512),
    visible_on_company boolean     default true                             not null,
    total_space        numeric(21, 2),
    used_space         numeric(21, 2),
    tc_agreed          boolean     default false                            not null
);

alter table account
    owner to lkt;

create unique index idx__account__verif_token
    on account (verif_token);

create table device
(
    id             bigint default nextval('device_seq'::regclass) not null
        primary key,
    device_id      varchar(255),
    otp_secret_key varchar(255),
    otp_validated  boolean                                        not null,
    subscriber_id  bigint
        constraint fk__device__subscriber_id__subscriber__id
            references subscriber,
    otp_token      varchar(100),
    created_date   date,
    enabled        boolean,
    device_name    varchar(50),
    certificate    bytea,
    public_key     bytea
);

alter table device
    owner to lkt;

create table device_account
(
    id          bigint    default nextval('device_account_seq'::regclass) not null
        primary key,
    device_id   bigint                                                    not null
        constraint fkdevice_acc941282
            references device,
    account_id  bigint                                                    not null
        constraint fkdevice_acc628160
            references account,
    created     timestamp default CURRENT_TIMESTAMP                       not null,
    active      boolean   default true                                    not null,
    created_by  bigint                                                    not null
        constraint fkdevice_acc368892
            references account,
    modified    timestamp default CURRENT_TIMESTAMP                       not null,
    modified_by bigint                                                    not null
        constraint fkdevice_acc502694
            references account
);

alter table device_account
    owner to lkt;

create table decrypt_permission
(
    id         bigint    default nextval('decrypt_permission_seq'::regclass) not null
        primary key,
    start_date timestamp default CURRENT_TIMESTAMP                           not null,
    end_date   timestamp,
    account_id bigint                                                        not null
        constraint fk__account__id__dp__acoount_id
            references account,
    device_id  bigint                                                        not null
        constraint fk__device__id__dp__device_id
            references device,
    valid      boolean   default true                                        not null
);

alter table decrypt_permission
    owner to lkt;

create table encryption
(
    id         bigint    default nextval('encryption_seq'::regclass) not null
        primary key,
    created_by bigint                                                not null
        constraint fkencryption269135
            references account,
    created    timestamp default CURRENT_TIMESTAMP                   not null
);

alter table encryption
    owner to lkt;

create table encryption_device
(
    id                bigint    default nextval('encryption_device_seq'::regclass) not null
        primary key,
    encryption_id     bigint                                                       not null
        constraint fk_encryption_device_encryption_id
            references encryption,
    device_account_id bigint
        constraint fk_encryption_device_device_account_id
            references device_account,
    encrypted_key     varchar(4096)                                                not null,
    algorithm         varchar(50),
    created_by        bigint                                                       not null
        constraint fk_encryption_device_account_id
            references account,
    created           timestamp default CURRENT_TIMESTAMP                          not null,
    account_id        bigint
        constraint fk_encryption_device__account_id
            references account
);

alter table encryption_device
    owner to lkt;

create table email_token
(
    id          bigint default nextval('email_token_seq'::regclass) not null
        primary key,
    status      varchar(255)                                        not null,
    email_date  timestamp                                           not null,
    email       varchar(255)                                        not null,
    email_token varchar(255)                                        not null
);

alter table email_token
    owner to lkt;

create unique index idx__email_token__email_token
    on email_token (email_token);

create table operation
(
    id           bigint default nextval('operation_seq'::regclass) not null
        primary key,
    account_type varchar(255),
    date         timestamp,
    type         varchar(255)
);

alter table operation
    owner to lkt;

create table rsa_key
(
    id        integer default nextval('rsa_key_seq'::regclass) not null
        primary key,
    alias_key varchar(255)                                     not null,
    pub_key   bytea,
    priv_key  bytea
);

alter table rsa_key
    owner to lkt;

create table storage
(
    id            varchar(36)  not null
        primary key,
    base_name     varchar(255) not null,
    created       timestamp    default now(),
    extension     varchar(255),
    icon          varchar(255),
    mime_type     varchar(255),
    modified      timestamp    default now(),
    name          varchar(255) not null,
    path          varchar(10000),
    thumbnail_id  varchar(255),
    type          varchar(255) not null,
    used_space    numeric(21, 2),
    version       integer      not null,
    owner_id      bigint
        constraint fk__storage__owner_id_account_id
            references account,
    parent_id     varchar(36)
        constraint fk__storage__parent_id__storage__id
            references storage,
    modifiedby_id bigint
        constraint fk__storage__modifiedby_id_account_id
            references account,
    init_vector   bytea,
    last_access   timestamp    default now(),
    encryption_id bigint
        constraint fk_storage_encryption_id
            references encryption,
    attachment_id varchar(36),
    serial_id     varchar(10),
    description   varchar(255) default ''::character varying,
    creation_date timestamp    default CURRENT_TIMESTAMP,
    in_trash      boolean      default false
);

alter table storage
    owner to lkt;

create table activity
(
    id              bigint      default nextval('activity_seq'::regclass) not null
        primary key,
    activity_type   varchar(256)                                          not null,
    activity_target varchar(255),
    activity_owner  bigint
        constraint activity_user_perf__fk
            references account,
    activity_date   timestamp,
    storage_id      varchar(36) default NULL::character varying
        constraint storage_id_fk
            references storage
            on delete cascade
);

alter table activity
    owner to lkt;

create unique index idx__storage__thumbnail_id
    on storage (thumbnail_id);

create table download_preparation_status
(
    id                   bigint  default nextval('download_prep_sequence'::regclass) not null
        primary key,
    requester_account_id bigint                                                      not null
        constraint download_preparation_status__requester_fk
            references account,
    file_name            varchar(255)                                                not null,
    file_path            text                                                        not null,
    download_token       text                                                        not null,
    files_ready          boolean default false,
    email_sent           boolean default false,
    created_at           timestamp,
    created_by           bigint                                                      not null
        constraint download_preparation_status_creation__fk
            references account,
    expiration_date      timestamp
);

alter table download_preparation_status
    owner to lkt;

create unique index download_preparation_status_file_name_uindex
    on download_preparation_status (file_name);

create table temp_session_cache
(
    id            bigint      default nextval('temp_session_cache_seq'::regclass) not null
        primary key,
    email         varchar(255),
    subscriber_id bigint,
    session_id    varchar(255),
    creation_date timestamp,
    device_type   varchar(10) default 'WEB'::character varying
);

alter table temp_session_cache
    owner to lkt;

create unique index temp_session_cache_id_uindex
    on temp_session_cache (id);

create table billing_product
(
    id           bigint default nextval('billing_product_seq'::regclass) not null
        primary key,
    capacity     integer,
    code         varchar(255),
    external_id  varchar(255),
    name         varchar(255),
    product_type varchar(255)
);

alter table billing_product
    owner to lkt;

create table pricing_plan
(
    id                 bigint default nextval('pricing_plan_seq'::regclass) not null
        primary key,
    base_package       boolean                                              not null,
    billing_interval   varchar(10)                                          not null,
    enabled            boolean                                              not null,
    external_id        varchar(255),
    interval_count     integer                                              not null,
    name               varchar(255)                                         not null,
    billing_product_id bigint                                               not null
        constraint fk__pricing_plan__billing_product_id__billing_product__id
            references billing_product,
    price_type         varchar(15),
    unit_amount        integer
);

alter table pricing_plan
    owner to lkt;

create table payment_currency
(
    id              bigint default nextval('payment_currency_seq'::regclass) not null
        primary key,
    amount          numeric(19, 2)                                           not null,
    currency_code   varchar(3)                                               not null,
    pricing_plan_id bigint                                                   not null
        constraint fk__payment_currency__pricing_plan_id__pricing_plan__id
            references pricing_plan
);

alter table payment_currency
    owner to lkt;

create table billing_address
(
    id           bigint default nextval('billing_address_seq'::regclass) not null
        primary key,
    address      varchar(255),
    bill_to_name varchar(250),
    city         varchar(45),
    country_id   bigint
        constraint fk__country__id__ba__country_id
            references country,
    post_code    varchar(11),
    region       varchar(45),
    tax_id       varchar(30),
    account_id   bigint                                                  not null
        constraint fk__account__id__ba__acoount_id
            references account
);

alter table billing_address
    owner to lkt;

create table payment_method
(
    id             bigint default nextval('payment_method_seq'::regclass) not null
        primary key,
    payment_type   varchar(15),
    last4          varchar(4),
    card_brand     varchar(20),
    reference_id   varchar(255),
    created_date   date                                                   not null,
    valid          boolean                                                not null,
    account_id     bigint                                                 not null
        constraint fk__account__id__pm__acoount_id
            references account,
    default_method boolean                                                not null
);

alter table payment_method
    owner to lkt;

create table payment
(
    id                bigint default nextval('payment_seq'::regclass) not null
        primary key,
    reference_id      varchar(255)                                    not null,
    created           date                                            not null,
    customer_id       varchar(255)                                    not null,
    currency          varchar(5)                                      not null,
    description       varchar(255),
    payment_method_id bigint                                          not null
        constraint fk__payment_method__id__payment__payment_method_id
            references payment_method,
    status            varchar(30)                                     not null,
    error             varchar(512),
    account_id        bigint                                          not null
        constraint fk__account__id__payment__acoount_id
            references account,
    amount            numeric(19, 2)
);

alter table payment
    owner to lkt;

create table key_subscription
(
    id              bigint default nextval('key_subscription_seq'::regclass) not null
        primary key,
    keys_amount     integer,
    start_date      date                                                     not null,
    end_date        date,
    valid           boolean                                                  not null,
    pricing_plan_id bigint
        constraint fk__key_subscription_pricing_plan_id__pricing_plan_id
            references pricing_plan,
    account_id      bigint                                                   not null
        constraint fk__key_subscription__key_id__acoount__id
            references account,
    payment_id      bigint
        constraint fk__payment_id__ks__payment_id
            references payment
);

alter table key_subscription
    owner to lkt;

create table invoice
(
    id                      bigint default nextval('invoice_seq'::regclass) not null
        primary key,
    invoice_number          varchar(255),
    invoice_date            date,
    invoice_type            varchar(255),
    invoice_status          varchar(255),
    account_id              bigint
        constraint fk__invoice__account_id__account__id
            references account,
    invoice_pdf             varchar(200),
    account_name            varchar(255),
    currency_code           varchar(3),
    start_date              date,
    end_date                date,
    total_before_tax_amount numeric(19, 2),
    tax_amount              numeric(19, 2),
    total                   numeric(19, 2),
    tax_percent             numeric(19, 2),
    billing_name            varchar(255),
    billing_tax_id          varchar(255),
    billing_address         varchar(255),
    billing_postal_code     varchar(255),
    billing_city            varchar(255),
    billing_region          varchar(255),
    billing_country_name    varchar(255),
    payment_id              bigint
        constraint fk__payment_id__invoice__payment_id
            references payment
);

alter table invoice
    owner to lkt;

create table invoice_line_item
(
    id            bigint default nextval('invoice_line_item_seq'::regclass) not null
        primary key,
    invoice_id    bigint
        constraint fk__invoice_line_item__invoice_id__invoice__id
            references invoice,
    plan_id       bigint,
    external_id   varchar(255),
    amount        numeric(19, 2),
    currency_code varchar(3),
    description   varchar(255),
    start_date    date,
    end_date      date,
    quantity      bigint,
    tax_rate      numeric(19, 2)
);

alter table invoice_line_item
    owner to lkt;

create table session_log
(
    id                       bigint default nextval('session_log_seq'::regclass) not null
        primary key,
    device_name              varchar(255),
    host_name                varchar(255),
    ip_address               varchar(255),
    location                 varchar(255),
    os_type                  varchar(255),
    session_id               varchar(255),
    user_agent               varchar(512),
    subscriber_id            bigint
        constraint fk__session_log__subscriber_id__subscriber__id
            references subscriber,
    started                  timestamp,
    finished                 timestamp,
    mac_address              varchar(255),
    imei                     varchar(255),
    geo_city_name            varchar(255),
    geo_country_name         varchar(255),
    geo_country_iso_code     varchar(255),
    geo_continent_name       varchar(255),
    geo_continent_code       varchar(255),
    geo_subdivision1         varchar(255),
    geo_subdivision2         varchar(255),
    geo_latitude             varchar(255),
    geo_longitude            varchar(255),
    geo_timezone             varchar(255),
    geo_postal_code          varchar(255),
    geo_ip_address           varchar(255),
    geo_ip_domain            varchar(255),
    geo_isp                  varchar(255),
    geo_organisation         varchar(255),
    geo_user_type            varchar(255),
    geo_connection_type      varchar(255),
    geo_connection_type_enum varchar(255),
    is_mobile                boolean
);

alter table session_log
    owner to lkt;

create table contact
(
    id                 bigint  default nextval('contact_seq'::regclass) not null
        primary key,
    birth_date         timestamp,
    first_name         varchar(256),
    last_name          varchar(256),
    account_id         bigint
        constraint fk__personal_contact__account_id__account__id
            references account,
    contact_account_id bigint
        constraint fk___contact__contact_account_id__account__id
            references account,
    subscriber_id      bigint
        constraint fk__contact__subscriber_id__subscriber__id
            references subscriber,
    middle_name        varchar(256),
    job_title          varchar(256),
    visible            integer default 1                                not null,
    merge_dismiss      boolean default false                            not null,
    invited            boolean default false,
    constraint at_least_one_not_null
        check ((first_name IS NOT NULL) OR (last_name IS NOT NULL))
);

alter table contact
    owner to lkt;

create table contact_group
(
    id            bigint default nextval('contact_group_seq'::regclass) not null
        primary key,
    name          varchar(50)                                           not null,
    subscriber_id bigint                                                not null
        constraint fk__contact_group__subscriber_id__subscriber__id
            references subscriber
);

alter table contact_group
    owner to lkt;

create table contact_group_membership
(
    id               bigint default nextval('contact_group_membership_seq'::regclass) not null
        primary key,
    contact_id       bigint                                                           not null
        constraint fk__contact_group_membership__contact_id__contact__id
            references contact,
    contact_group_id bigint                                                           not null
        constraint fk__contact_group_membership__group_id__group__id
            references contact_group
);

alter table contact_group_membership
    owner to lkt;

create table contact_option
(
    id         bigint default nextval('contact_option_seq'::regclass) not null
        primary key,
    label      varchar(256)                                           not null,
    value      varchar(256),
    category   varchar(50)                                            not null,
    contact_id bigint                                                 not null
        constraint fk__contact_option__contact_id__contact__id
            references contact
);

alter table contact_option
    owner to lkt;

create table decrypt_task
(
    id          bigint default nextval('decrypt_task_seq'::regclass) not null
        primary key,
    create_date date                                                 not null,
    status      varchar(50)                                          not null,
    account_id  bigint                                               not null
        constraint fkdecrypt_task_acc
            references account,
    app_type    varchar(30)                                          not null,
    storage_id  varchar(36)
        constraint fkdecrypt_task_storage
            references storage,
    token       varchar(50)                                          not null,
    device_id   varchar(255),
    last_update timestamp
);

alter table decrypt_task
    owner to lkt;

create table conference
(
    id               bigint      not null
        primary key,
    conf_internal_id varchar(64) not null,
    conf_pwd         varchar(64) not null,
    conf_id          varchar(64) not null,
    conf_name        varchar(64),
    recurring_flg    boolean default false,
    creator_id       integer     not null
        constraint conferece_account_id_fk
            references account,
    creation_date    timestamp
);

alter table conference
    owner to lkt;

create unique index conferece_conf_internal_id_uindex
    on conference (conf_internal_id);

create table conference_member
(
    id             bigint    not null
        constraint conference_member_pk
            primary key,
    conference_id  bigint    not null
        constraint conference_member_conference_id_fk
            references conference,
    member_account integer   not null
        constraint conference_member_account_id_fk
            references account,
    accept_time    timestamp not null,
    notifications  boolean default true,
    pending        boolean default false
);

alter table conference_member
    owner to lkt;

create table timezone
(
    id       integer default nextval('timezone_seq'::regclass) not null
        primary key,
    value    varchar(256)                                      not null,
    abbr     varchar(50)                                       not null,
    "offset" integer                                           not null,
    isdst    boolean                                           not null,
    text     varchar(256)                                      not null,
    utc      varchar(1024)                                     not null
);

alter table timezone
    owner to lkt;

create table user_login
(
    id    integer default nextval('user_login_seq'::regclass) not null
        primary key,
    uuid  varchar(256)                                        not null,
    token varchar(1024)                                       not null
);

alter table user_login
    owner to lkt;

create table storage_membership
(
    id              bigint      default nextval('storage_membership_seq'::regclass) not null
        primary key,
    start_date      date,
    status          varchar(255),
    account_id      bigint
        constraint fk_storage_membership__account_id__account_id
            references account,
    storage_id      varchar(36)
        constraint fk_storage_membership__storage_id__storage_id
            references storage,
    last_access     timestamp,
    membership_role varchar(15) default NULL::character varying,
    end_date        timestamp
);

alter table storage_membership
    owner to lkt;

create table call_history
(
    id              varchar(36) default nextval('call_history_seq'::regclass) not null
        constraint call_history_pk
            primary key,
    call_type       varchar(20)                                               not null,
    owner           bigint
        constraint call_history_account_id_fk
            references account,
    start_time      timestamp,
    end_time        timestamp,
    call_hist_owner bigint
        constraint call_history__fk
            references account,
    call_id         varchar(36),
    recording       boolean     default false
);

comment on table call_history is 'table used to store call data';

alter table call_history
    owner to lkt;

create table call_member
(
    id                 varchar(36) not null
        constraint call_member_pk
            primary key,
    call_hist_id       varchar(36)
        constraint call_history__fk
            references call_history,
    account_member_id  bigint
        constraint call_history_account_id_fk
            references account,
    external_user_id   varchar(36),
    external_user_name varchar(90),
    call_direction     varchar(100)
);

comment on table call_member is 'table used to store the members of a call';

alter table call_member
    owner to lkt;

create table pgp_signature
(
    id           bigint not null
        constraint pgp_signature_pk
            primary key,
    account_id   integer
        constraint pgp_signature_account_id_fk
            references account,
    public_crt   text   not null,
    private_crt  text   not null,
    created_id   integer
        constraint pgp_signature_account_id_fk_2
            references account,
    created_date date   not null
);

alter table pgp_signature
    owner to lkt;

create table signed_file
(
    id           bigint not null
        constraint signed_file_pk
            primary key,
    storage_id   varchar(36)
        constraint signed_file_storage_fk
            references storage,
    file_cert    text   not null,
    owner_id     integer
        constraint signed_file_account_owner_fk
            references account,
    signature_id bigint not null
        constraint signed_file__signature_fk
            references pgp_signature,
    created_date date   not null,
    created_by   integer
        constraint signed_file_account_created_by_fk
            references account
);

alter table signed_file
    owner to lkt;

create table signature
(
    id           bigint default nextval('sig_seq'::regclass) not null
        primary key,
    title        varchar(120)                                not null,
    msg          text,
    description  text,
    owner_id     integer
        constraint owner_fk
            references account,
    date_created timestamp
);

alter table signature
    owner to lkt;

create table signature_block
(
    id          bigint default nextval('sig_block_seq'::regclass) not null
        primary key,
    sig_id      bigint                                            not null,
    owner_id    integer
        constraint owner_fk
            references account,
    metadata    text,
    pub_crt     text,
    priv_crt    text,
    enc_id      bigint
        constraint enc_fk
            references encryption,
    description text
);

alter table signature_block
    owner to lkt;

create table file_signature
(
    id           bigint  default nextval('file_sig_seq'::regclass) not null
        primary key,
    sig_id       bigint                                            not null
        constraint sig_id_fk
            references signature,
    sig_block_id bigint                                            not null
        constraint sig_block_id_fk
            references signature_block,
    owner_id     integer
        constraint owner_fk
            references account,
    storage_id   varchar(36)
        constraint storage_id_fk
            references storage,
    is_id        boolean default false
);

alter table file_signature
    owner to lkt;

create table signature_participant
(
    id                     bigint  default nextval('sig_part_seq'::regclass) not null
        primary key,
    participant_account_id integer
        constraint participant_fk
            references account,
    owner_id               integer
        constraint owner_fk
            references account,
    participant_email      varchar(32),
    accepted               boolean default false,
    sig_id                 bigint                                            not null
        constraint sig_fk
            references signature
);

alter table signature_participant
    owner to lkt;

create table signature_batch_job
(
    id              varchar(36) not null
        primary key,
    sig_participant bigint
        constraint sig_part_fk
            references signature_participant,
    sig_metadata    text
);

alter table signature_batch_job
    owner to lkt;

create table tags
(
    id         varchar(36) not null
        primary key,
    tag_name   varchar(20),
    account_id bigint
        constraint tags_account__fk
            references account,
    tag_code   varchar(30),
    system_tag boolean default false
);

alter table tags
    owner to lkt;

create table account_subscription
(
    id              bigint default nextval('account_subscriptiony_seq'::regclass) not null
        primary key,
    end_date        date,
    space_amount    numeric(19, 2),
    start_date      date,
    valid           boolean                                                       not null,
    account_id      bigint
        constraint fk__account_subscription__account_account_id
            references account,
    pricing_plan_id bigint
        constraint fk__account_subscription__pricing_plan_id
            references pricing_plan,
    payment_id      bigint
        constraint fk__payment_id__as__payment_id
            references payment
);

alter table account_subscription
    owner to lkt;

create table starred_storages
(
    id           varchar(36) not null
        primary key,
    storage_id   varchar(36) not null
        constraint starred_storages__storage_fk
            references storage
            on delete cascade,
    account_id   bigint      not null
        constraint starred_storages__account_fk
            references account
            on delete cascade,
    starred_flag boolean default false
);

comment on table starred_storages is 'mapping of starred storages';

alter table starred_storages
    owner to lkt;

create table internal_invitation
(
    id                         varchar(36)                                     not null
        primary key,
    inviter_account_id         bigint
        constraint internal_invitation__inviter_fk
            references account
            on delete cascade,
    invitee_account_id         bigint
        constraint internal_invitation_invitee__fk
            references account
            on delete cascade,
    invitation_app             varchar(12)                                     not null,
    invitation_approval_status varchar(8) default 'PENDING'::character varying not null,
    invitation_metadata        text                                            not null,
    invitation_group_id        varchar(36),
    storage_id                 varchar(36)
);

comment on table internal_invitation is 'table storing invitations for internal members';

alter table internal_invitation
    owner to lkt;

create table external_invitation
(
    id                     varchar(36) not null
        primary key,
    inviter_account_id     bigint
        constraint internal_invitation__inviter_fk
            references account
            on delete cascade,
    inviter_email_address  varchar(42) not null,
    invitee_email_address  varchar(42) not null,
    invitation_app         varchar(12) not null,
    invitation_metadata    text        not null,
    internal_invitation_id varchar(36)
        constraint internal_invitation_internal_invitation_id_fk
            references internal_invitation
            on delete cascade,
    invitation_group_id    varchar(36),
    storage_id             varchar(36)
);

comment on table external_invitation is 'table storing invitations for external members';

alter table external_invitation
    owner to lkt;

create table background
(
    id             varchar(36) not null
        primary key,
    file_id        varchar(36) not null,
    system_default boolean default false,
    mime_type      varchar(255),
    account_id     bigint
        constraint bg_acc_id_fk
            references account
);

comment on table background is 'table mapping backgournd images to an account';

alter table background
    owner to lkt;

create table message
(
    id         varchar(36)  not null
        primary key,
    box_id     varchar(36)  not null
        constraint fk_storage_message_box_id
            references storage,
    subject    varchar(150) not null,
    body_id    varchar(36)  not null
        constraint fk_storage_message_body_id
            references storage,
    created    timestamp(6) not null,
    created_by bigint       not null
        constraint fk_account_message_created_by
            references account
);

alter table message
    owner to lkt;

create table message_membership
(
    id            varchar(36) not null
        primary key,
    membership_id bigint      not null
        constraint fk_membership_message_membership_membership_id
            references storage_membership,
    message_id    varchar(36) not null
        constraint fk_message_message_membership_message_id
            references message,
    read_at       timestamp(6),
    deleted       boolean,
    role          varchar(15)
);

alter table message_membership
    owner to lkt;

create table message_attachment
(
    id         varchar(36) not null
        primary key,
    message_id varchar(36) not null
        constraint fk_message_message_attachment_message_id
            references message,
    storage_id varchar(36) not null
        constraint fk_storage_message_attachment_storage_id
            references storage
);

alter table message_attachment
    owner to lkt;

create table tag_storage_membership
(
    id         varchar(36) not null
        primary key,
    storage_id varchar(36)
        constraint fk_storage_tag_fk
            references storage
            on delete cascade,
    tag_id     varchar(36)
        constraint fk_tag_fk
            references tags
            on delete cascade,
    account_id bigint
        constraint fk_tag_account_storage_tag_fk
            references account
);

alter table tag_storage_membership
    owner to lkt;

create table reset_password
(
    id            varchar(36) not null
        primary key,
    subscriber_id bigint
        constraint sub_sk
            references subscriber
            on delete cascade,
    token         varchar(36)
);

alter table reset_password
    owner to lkt;

create table note
(
    id                varchar(36) not null
        primary key,
    owner_id          bigint
        constraint owner_id_fk
            references account
            on delete cascade,
    creation_date     timestamp,
    modification_date timestamp,
    title             varchar(60),
    content_id        varchar(36)
        constraint note_content_fk
            references storage
);

alter table note
    owner to lkt;

create table note_member
(
    id              varchar(36) not null
        primary key,
    account_id      bigint
        constraint note_member_account_id_fk
            references account
            on delete cascade,
    note_id         varchar(36)
        constraint note_id_fk
            references note
            on delete cascade,
    is_owner        boolean,
    membership_role varchar(36)
);

alter table note_member
    owner to lkt;

create table note_binary_data
(
    id         varchar(36) not null
        primary key,
    note_id    varchar(36)
        constraint note_binary_data_note_id_fk
            references note
            on delete cascade,
    storage_id varchar(36)
        constraint note_binary_data_storage_id_fk
            references note
            on delete cascade
);

alter table note_binary_data
    owner to lkt;

create table note_archive
(
    id            varchar(36) not null
        primary key,
    note_id       varchar(36)
        constraint note_archive_fk
            references note,
    archived_flag boolean default false
);

alter table note_archive
    owner to lkt;

create table event
(
    id                varchar(36)                            not null
        primary key,
    event_title       varchar(50),
    event_description varchar(500),
    created_at        timestamp with time zone default now() not null,
    modified_at       timestamp with time zone default now() not null
);

alter table event
    owner to lkt;

create table event_recurring_pattern
(
    id          varchar(36)                            not null
        primary key,
    created_at  timestamp with time zone default now() not null,
    modified_at timestamp with time zone default now() not null
);

alter table event_recurring_pattern
    owner to lkt;

create table event_recurring_type
(
    id          varchar(36)                            not null
        primary key,
    created_at  timestamp with time zone default now() not null,
    modified_at timestamp with time zone default now() not null
);

alter table event_recurring_type
    owner to lkt;

create table event_instance_exception
(
    id          varchar(36)                            not null
        primary key,
    created_at  timestamp with time zone default now() not null,
    modified_at timestamp with time zone default now() not null
);

alter table event_instance_exception
    owner to lkt;

create table account_preferences
(
    id                 varchar(36) not null
        primary key,
    account_id         bigint
        constraint account_preferences_acc_fk
            references account,
    apps_order         text,
    interface_language bigint
        constraint account_preferences_int_lang_fk
            references language,
    created_date       timestamp default now(),
    modified_date      timestamp default now()
);

alter table account_preferences
    owner to lkt;

create table user_calendar
(
    id                   varchar(36) not null
        primary key,
    account_id           bigint
        constraint account_preferences_acc_fk
            references account,
    calendar_name        varchar(128),
    calendar_description varchar(256),
    created_date         timestamp default now(),
    modified_date        timestamp default now(),
    calendar_color       varchar(128)
);

alter table user_calendar
    owner to lkt;

create table calendar_temp_tbl
(
    id              varchar(36) not null
        primary key,
    subject         varchar(255),
    location        varchar(255),
    start_time      timestamp,
    end_time        timestamp,
    category_color  varchar(60),
    city            varchar(60),
    event_type      varchar(40),
    all_day         boolean,
    recurrence_rule varchar(120),
    image_name      varchar(90),
    account_id      bigint
        constraint cal_temp_acc_fk
            references account,
    calendar_id     varchar(36)
        constraint calendar_id_fk
            references user_calendar
);

alter table calendar_temp_tbl
    owner to lkt;

create table email
(
    id           varchar(36)  not null
        primary key,
    subject      varchar(150) not null,
    created      timestamp(6) not null,
    created_by   bigint       not null
        constraint fk_account_id_email
            references account,
    scheduled_at timestamp(6),
    status       varchar(10),
    chain_id     varchar(36)  not null
);

alter table email
    owner to lkt;

create table email_label
(
    id         varchar(36)  not null
        primary key,
    name       varchar(70)  not null,
    created    timestamp(6) not null,
    created_by bigint
        constraint fk_account_id_email_label
            references account
);

alter table email_label
    owner to lkt;

create table email_account
(
    id               varchar(36) not null
        primary key,
    email_id         varchar(36) not null
        constraint fk_email_id_email_account
            references email,
    account_id       bigint
        constraint fk_account_id_email_account
            references account,
    email            varchar(256),
    read_on          timestamp(6),
    deleted_on       timestamp(6),
    destination_type varchar(6)  not null,
    body_id          varchar(36)
        constraint fk_storage_id_email_account
            references storage,
    email_label_id   varchar(36)
        constraint fk_email_label_id_email_account
            references email_label
);

alter table email_account
    owner to lkt;

create table email_attachment
(
    id               varchar(36) not null
        primary key,
    storage_id       varchar(36) not null
        constraint fk_storage_id_email_attachment
            references storage,
    email_account_id varchar(36) not null
        constraint fk_email_account_id_email_attachment
            references email_account
);

alter table email_attachment
    owner to lkt;

create table email_label_order
(
    id             varchar(36) not null
        primary key,
    email_label_id varchar(36) not null
        constraint fk_email_label_id_email_label_order
            references email_label,
    account_id     bigint,
    "order"        integer
);

alter table email_label_order
    owner to lkt;

create view storage_max_version(id, name, path, type, parent_id, owner_id, version) as
SELECT max(storage.id::text)::character varying(36) AS id,
       storage.name,
       storage.path,
       storage.type,
       storage.parent_id,
       storage.owner_id,
       max(storage.version)                         AS version
FROM storage
GROUP BY storage.name, storage.path, storage.type, storage.parent_id, storage.owner_id;

alter table storage_max_version
    owner to lkt;

create view contact_from_account (id, first_name, last_name, account_id, middle_name, visible, contact_account_id) as
SELECT c.id,
       c.first_name,
       c.last_name,
       c.account_id,
       c.middle_name,
       c.visible,
       c.contact_account_id
FROM contact c
         JOIN contact_option co ON co.contact_id = c.id AND co.category::text = 'EMAIL'::text
         JOIN subscriber s ON s.email::text = co.value::text
         JOIN account a ON a.subscriber_id = s.id
WHERE c.contact_account_id IS NULL
  AND a.visible = true;

alter table contact_from_account
    owner to lkt;

create view custom_contact
            (id, first_name, last_name, account_id, middle_name, visible, subscriber_id, contact_subscriber_id,
             twelve_co)
as
SELECT DISTINCT c.id,
                c.first_name,
                c.last_name,
                c.account_id,
                c.middle_name,
                c.visible,
                c.subscriber_id,
                s.id   AS contact_subscriber_id,
                a.name AS twelve_co
FROM contact c
         JOIN contact_option co ON co.contact_id = c.id AND co.category::text = 'EMAIL'::text
         LEFT JOIN subscriber s ON s.email::text = co.value::text
         LEFT JOIN account a ON a.subscriber_id = s.id
WHERE c.contact_account_id IS NULL
  AND a.visible = true;

alter table custom_contact
    owner to lkt;

