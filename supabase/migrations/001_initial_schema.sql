create extension if not exists "pgcrypto";

create table organizations (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  created_at timestamptz default now()
);

create table products (
  id uuid primary key default gen_random_uuid(),
  organization_id uuid references organizations(id) on delete cascade,

  product_code text,
  barcode text,
  product_name text not null,

  brand text,
  category text,
  supplier_name text,

  origin_country text,
  hs_code text,
  vat_rate numeric,

  cost_price numeric,
  currency text default 'TRY',

  retail_price numeric,
  wholesale_price numeric,
  export_price numeric,

  width_cm numeric,
  length_cm numeric,
  height_cm numeric,

  desi_tr numeric,
  desi_international numeric,

  product_net_kg numeric,
  product_gross_kg numeric,

  units_per_carton integer,

  carton_width_cm numeric,
  carton_length_cm numeric,
  carton_height_cm numeric,

  carton_m3 numeric,
  carton_net_kg numeric,
  carton_gross_kg numeric,

  shopify_title text,
  seo_title text,
  seo_description text,
  product_description text,

  english_name text,
  english_description text,

  image_url text,

  status text default 'active',

  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table companies (
  id uuid primary key default gen_random_uuid(),
  organization_id uuid references organizations(id) on delete cascade,

  company_name text not null,
  company_type text,

  country text,
  city text,
  address text,

  tax_number text,

  website text,
  email text,
  phone text,

  currency text,
  language text,

  notes text,

  created_at timestamptz default now()
);

create table contacts (
  id uuid primary key default gen_random_uuid(),
  company_id uuid references companies(id) on delete cascade,

  full_name text,
  title text,

  phone text,
  email text,

  card_image_url text,

  notes text,

  created_at timestamptz default now()
);

create table marketplace_calculations (
  id uuid primary key default gen_random_uuid(),
  organization_id uuid references organizations(id) on delete cascade,
  product_id uuid references products(id) on delete cascade,

  platform text not null,

  sale_price numeric,

  commission_rate numeric,
  shipping_cost numeric,
  packaging_cost numeric,
  ad_cost numeric,
  return_risk_cost numeric,

  total_cost numeric,
  breakeven_price numeric,

  net_profit numeric,
  profit_margin numeric,

  created_at timestamptz default now()
);

create table trade_documents (
  id uuid primary key default gen_random_uuid(),
  organization_id uuid references organizations(id) on delete cascade,

  company_id uuid references companies(id),

  document_type text,
  document_no text,

  currency text,
  total_amount numeric,

  status text default 'draft',

  created_at timestamptz default now()
);

create table trade_document_items (
  id uuid primary key default gen_random_uuid(),

  document_id uuid references trade_documents(id) on delete cascade,
  product_id uuid references products(id),

  quantity numeric,
  unit_price numeric,
  total_price numeric,

  created_at timestamptz default now()
);
