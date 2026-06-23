create table product_translations (
  id uuid primary key default gen_random_uuid(),

  product_id uuid references products(id) on delete cascade,

  language_code text not null,

  product_name text not null,

  short_description text,
  long_description text,

  seo_title text,
  seo_description text,

  shopify_title text,

  created_at timestamptz default now(),

  unique(product_id, language_code)
);

create index idx_product_translations_product
on product_translations(product_id);

create index idx_product_translations_language
on product_translations(language_code);
