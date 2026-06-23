create table product_variants (

    id uuid primary key default gen_random_uuid(),

    product_id uuid references products(id) on delete cascade,

    sku text unique,
    barcode text,

    variant_name text,

    color text,
    size text,

    diameter numeric,
    volume numeric,

    weight numeric,

    purchase_price numeric,
    sale_price numeric,

    stock_quantity numeric default 0,

    is_active boolean default true,

    created_at timestamptz default now()
);

create index idx_product_variants_product
on product_variants(product_id);

create index idx_product_variants_sku
on product_variants(sku);
