create table product_assets (
  id uuid primary key default gen_random_uuid(),

  product_id uuid references products(id) on delete cascade,

  asset_type text not null,
  asset_name text,
  file_url text,

  language_code text default 'tr',

  sort_order integer default 0,

  created_at timestamptz default now()
);

create index idx_product_assets_product
on product_assets(product_id);

create index idx_product_assets_type
on product_assets(asset_type);
