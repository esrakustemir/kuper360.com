create table warehouse_stock (

    id uuid primary key default gen_random_uuid(),

    warehouse_id uuid references warehouses(id) on delete cascade,

    variant_id uuid references product_variants(id) on delete cascade,

    quantity numeric default 0,

    min_stock numeric default 0,

    created_at timestamptz default now(),

    unique(warehouse_id, variant_id)
);

create index idx_warehouse_stock_warehouse
on warehouse_stock(warehouse_id);

create index idx_warehouse_stock_variant
on warehouse_stock(variant_id);
