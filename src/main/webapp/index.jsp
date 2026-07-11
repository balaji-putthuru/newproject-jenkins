<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>LUMINA · modern store</title>
  <!-- Google Fonts + Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    /* ----- reset & variables ----- */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    :root {
      --bg: #faf9f6;
      --surface: #ffffff;
      --primary: #1e1e2f;
      --accent: #b892ff;
      --accent-soft: #e6d7ff;
      --muted: #5b5b6b;
      --light-muted: #8e8e9a;
      --radius: 28px;
      --card-radius: 20px;
      --shadow: 0 20px 40px -12px rgba(0,0,0,0.08);
      --transition: 0.25s ease;
    }
    body {
      font-family: 'Space Grotesk', system-ui, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { text-decoration: none; color: inherit; }
    img { display: block; max-width: 100%; }
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      border: none;
      border-radius: 60px;
      padding: 14px 28px;
      font-weight: 600;
      font-size: 0.95rem;
      background: var(--primary);
      color: white;
      cursor: pointer;
      transition: var(--transition);
      box-shadow: 0 4px 8px rgba(0,0,0,0.02);
    }
    .btn-primary {
      background: var(--accent);
      color: #0e0e1a;
    }
    .btn-primary:hover { background: #a77ae8; transform: scale(0.97); }
    .btn-outline {
      background: transparent;
      border: 1.5px solid rgba(30,30,47,0.15);
      color: var(--primary);
    }
    .btn-outline:hover { background: var(--primary); color: white; border-color: var(--primary); }
    .section { padding: 60px 0; }
    .section-title {
      font-size: 2.2rem;
      font-weight: 600;
      letter-spacing: -0.02em;
      margin-bottom: 8px;
    }
    .section-sub {
      color: var(--muted);
      margin-bottom: 28px;
    }
    /* header */
    header {
      background: rgba(255,255,255,0.7);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(0,0,0,0.02);
      position: sticky;
      top: 0;
      z-index: 50;
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 16px 0;
      gap: 20px;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 6px;
      font-weight: 700;
      font-size: 1.7rem;
      letter-spacing: -0.5px;
    }
    .brand i { color: var(--accent); font-size: 1.8rem; }
    .nav-links {
      display: flex;
      align-items: center;
      gap: 28px;
      list-style: none;
    }
    .nav-links a {
      font-weight: 500;
      color: var(--primary);
      transition: var(--transition);
      font-size: 0.95rem;
    }
    .nav-links a:hover { color: var(--accent); }
    .header-actions {
      display: flex;
      align-items: center;
      gap: 16px;
    }
    .search-wrap {
      display: flex;
      align-items: center;
      background: white;
      border-radius: 60px;
      padding: 4px 4px 4px 18px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.02);
      border: 1px solid #eee;
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 0.9rem;
      width: 180px;
      outline: none;
      font-family: inherit;
    }
    .search-wrap button {
      background: var(--accent);
      border: none;
      border-radius: 40px;
      padding: 8px 16px;
      color: #0e0e1a;
      font-size: 1rem;
      cursor: pointer;
    }
    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.3rem;
      color: var(--primary);
      cursor: pointer;
      transition: var(--transition);
      position: relative;
    }
    .icon-btn:hover { color: var(--accent); }
    .cart-badge {
      position: absolute;
      top: -6px;
      right: -8px;
      background: var(--accent);
      color: #0e0e1a;
      font-weight: 700;
      font-size: 0.65rem;
      width: 20px;
      height: 20px;
      border-radius: 40px;
      display: grid;
      place-items: center;
    }
    .mobile-toggle { display: none; background: none; border: none; font-size: 1.8rem; cursor: pointer; }

    /* hero */
    .hero {
      background: linear-gradient(145deg, #f2edff, #ffffff);
      border-radius: 32px;
      padding: 60px 48px;
      margin: 24px 0 12px;
      display: flex;
      align-items: center;
      flex-wrap: wrap;
      gap: 40px;
      justify-content: space-between;
    }
    .hero-content { flex: 1 1 320px; }
    .hero-content h1 {
      font-size: 3.4rem;
      font-weight: 700;
      letter-spacing: -0.03em;
      line-height: 1.1;
      margin-bottom: 16px;
    }
    .hero-content h1 span { color: var(--accent); }
    .hero-content p {
      color: var(--muted);
      max-width: 440px;
      margin-bottom: 28px;
      font-size: 1.1rem;
    }
    .hero-actions { display: flex; gap: 12px; flex-wrap: wrap; }
    .hero-image {
      flex: 1 1 280px;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=600&q=80') center/cover;
      min-height: 220px;
      border-radius: 40px;
      box-shadow: 0 30px 40px -20px rgba(0,0,0,0.1);
    }

    /* categories */
    .category-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(140px,1fr));
      gap: 16px;
    }
    .cat-card {
      background: var(--surface);
      padding: 22px 10px;
      border-radius: 40px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      cursor: pointer;
      border: 1px solid transparent;
    }
    .cat-card:hover { transform: translateY(-6px); border-color: var(--accent-soft); }
    .cat-card i { font-size: 2.2rem; color: var(--accent); margin-bottom: 8px; }
    .cat-card h4 { font-weight: 600; font-size: 1rem; }

    /* products */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(240px,1fr));
      gap: 28px;
    }
    .product-card {
      background: var(--surface);
      border-radius: var(--card-radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover { transform: translateY(-8px); box-shadow: 0 30px 40px -16px rgba(0,0,0,0.12); }
    .product-card img {
      height: 200px;
      width: 100%;
      object-fit: cover;
      background: #f0edf7;
    }
    .product-body { padding: 18px 18px 12px; flex: 1; display: flex; flex-direction: column; gap: 8px; }
    .product-body h5 { font-weight: 600; font-size: 1.1rem; }
    .product-meta { display: flex; justify-content: space-between; align-items: center; }
    .price { font-weight: 700; font-size: 1.2rem; }
    .old-price { color: var(--light-muted); font-size: 0.85rem; text-decoration: line-through; margin-left: 8px; }
    .rating { color: #fbbf24; letter-spacing: 1px; font-size: 0.8rem; }
    .product-footer {
      padding: 12px 18px 18px;
      display: flex;
      gap: 10px;
    }
    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: none;
      padding: 12px;
      border-radius: 60px;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
      font-family: inherit;
    }
    .add-btn:hover { background: var(--accent); color: #0e0e1a; }
    .wish-btn {
      background: #f1eff5;
      border: none;
      padding: 0 16px;
      border-radius: 60px;
      cursor: pointer;
      font-size: 1.1rem;
    }

    /* deal banner */
    .deal-banner {
      background: linear-gradient(135deg, #1e1e2f, #2b2942);
      color: white;
      border-radius: 40px;
      padding: 40px 44px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 30px;
      justify-content: space-between;
    }
    .deal-banner .deal-content { flex: 2 1 280px; }
    .deal-banner h2 { font-size: 2.2rem; letter-spacing: -0.02em; }
    .deal-banner .highlight { color: var(--accent); }
    .timer-box {
      display: flex;
      gap: 16px;
      margin: 20px 0;
    }
    .time-unit {
      background: rgba(255,255,255,0.08);
      backdrop-filter: blur(4px);
      padding: 8px 18px;
      border-radius: 20px;
      text-align: center;
      min-width: 70px;
    }
    .time-unit span { font-size: 1.8rem; font-weight: 700; display: block; }
    .time-unit small { opacity: 0.6; font-size: 0.7rem; text-transform: uppercase; }

    /* testimonials */
    .testimonial-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 8px 4px 20px;
    }
    .testimonial-card {
      min-width: 300px;
      background: white;
      padding: 24px;
      border-radius: 32px;
      box-shadow: var(--shadow);
    }
    .testimonial-card .stars { color: #fbbf24; margin-bottom: 8px; }
    .testimonial-card p { color: var(--primary); font-weight: 450; }

    /* newsletter */
    .newsletter-box {
      background: var(--surface);
      border-radius: 60px;
      padding: 48px 40px;
      text-align: center;
      box-shadow: var(--shadow);
    }
    .newsletter-box input {
      border: 1px solid #ddd;
      border-radius: 60px;
      padding: 16px 24px;
      width: 320px;
      max-width: 100%;
      font-family: inherit;
      background: white;
      outline: none;
    }
    .newsletter-box input:focus { border-color: var(--accent); }

    /* footer */
    footer {
      padding: 40px 0 24px;
      border-top: 1px solid rgba(0,0,0,0.03);
      color: var(--muted);
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 30px;
    }

    /* mobile */
    @media (max-width: 800px) {
      .nav-links, .search-wrap { display: none; }
      .mobile-toggle { display: inline-block; }
      .hero { padding: 32px 24px; }
      .hero-content h1 { font-size: 2.4rem; }
      .product-grid { grid-template-columns: repeat(auto-fill, minmax(180px,1fr)); }
      .deal-banner { padding: 28px 24px; }
      .newsletter-box { padding: 32px 20px; }
    }
    @media (max-width: 500px) {
      .product-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
      .category-grid { grid-template-columns: repeat(3,1fr); }
    }
    .mobile-menu {
      display: none;
      background: white;
      padding: 20px 24px;
      border-top: 1px solid #eee;
    }
    .mobile-menu.open { display: block; }
    .mobile-menu a { display: block; padding: 10px 0; font-weight: 500; }
  </style>
</head>
<body>
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:12px;">
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-gem"></i> LUMINA</a>
    </div>
    <ul class="nav-links">
      <li><a href="#">Home</a></li>
      <li><a href="#categories">Categories</a></li>
      <li><a href="#products">Trending</a></li>
      <li><a href="#deals">Deals</a></li>
    </ul>
    <div class="header-actions">
      <div class="search-wrap">
        <input type="text" id="searchInput" placeholder="Search...">
        <button id="searchBtn"><i class="fas fa-arrow-right"></i></button>
      </div>
      <button class="icon-btn"><i class="far fa-user"></i></button>
      <button class="icon-btn" id="cartBtn">
        <i class="fas fa-bag-shopping"></i>
        <span class="cart-badge" id="cartCount">0</span>
      </button>
    </div>
  </div>
  <div class="mobile-menu" id="mobileMenu">
    <a href="#">Home</a>
    <a href="#categories">Categories</a>
    <a href="#products">Trending</a>
    <a href="#deals">Deals</a>
  </div>
</header>

<main>
  <!-- hero -->
  <section class="container">
    <div class="hero">
      <div class="hero-content">
        <h1>Style meets <span>future</span></h1>
        <p>Discover curated tech, fashion, and accessories — all in one minimalist space.</p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNow">Shop now <i class="fas fa-arrow-right"></i></button>
          <button class="btn btn-outline" id="exploreDeals">Explore deals</button>
        </div>
      </div>
      <div class="hero-image"></div>
    </div>
  </section>

  <!-- categories -->
  <section class="section container" id="categories">
    <h2 class="section-title">Categories</h2>
    <p class="section-sub">Pick your vibe</p>
    <div class="category-grid" id="categoriesGrid"></div>
  </section>

  <!-- products -->
  <section class="section container" id="products">
    <h2 class="section-title">Trending now</h2>
    <p class="section-sub">Most loved this week</p>
    <div class="product-grid" id="productsGrid"></div>
  </section>

  <!-- deal -->
  <section class="section container" id="deals">
    <div class="deal-banner">
      <div class="deal-content">
        <h2>Flash sale <span class="highlight">⚡</span></h2>
        <p style="opacity:0.7;margin-top:4px;">MacBook Air M2 – power in a featherlight frame.</p>
        <div class="timer-box" id="timerBox">
          <div class="time-unit"><span id="dealDays">0</span><small>days</small></div>
          <div class="time-unit"><span id="dealHours">00</span><small>hrs</small></div>
          <div class="time-unit"><span id="dealMinutes">00</span><small>min</small></div>
          <div class="time-unit"><span id="dealSeconds">00</span><small>sec</small></div>
        </div>
        <div style="display:flex;align-items:center;gap:16px;flex-wrap:wrap;">
          <span style="font-size:2rem;font-weight:700;">$999</span>
          <span style="text-decoration:line-through;opacity:0.5;">$1,199</span>
          <span style="background:var(--accent);color:#0e0e1a;padding:4px 16px;border-radius:40px;font-weight:600;">-17%</span>
        </div>
        <button class="btn btn-primary" id="buyDeal" style="margin-top:20px;"><i class="fas fa-bolt"></i> Buy now</button>
      </div>
      <div style="flex:1;min-width:140px;background:url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=400&q=80') center/cover;border-radius:32px;min-height:180px;"></div>
    </div>
  </section>

  <!-- testimonials -->
  <section class="section container">
    <h2 class="section-title">What they say</h2>
    <p class="section-sub">Real voices, real love</p>
    <div class="testimonial-scroll" id="testimonialScroll">
      <div class="testimonial-card">
        <div class="stars">★★★★★</div>
        <p>“Absolutely stunning quality. The packaging was also next-level.”</p>
        <div style="display:flex;align-items:center;gap:12px;margin-top:12px;">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=60&q=80" style="border-radius:40px;width:44px;height:44px;object-fit:cover;">
          <div><strong>Ava</strong><div style="font-size:0.8rem;opacity:0.6;">verified</div></div>
        </div>
      </div>
      <div class="testimonial-card">
        <div class="stars">★★★★☆</div>
        <p>“Super fast delivery and the product exceeded my expectations.”</p>
        <div style="display:flex;align-items:center;gap:12px;margin-top:12px;">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=60&q=80" style="border-radius:40px;width:44px;height:44px;object-fit:cover;">
          <div><strong>Michael</strong><div style="font-size:0.8rem;opacity:0.6;">frequent buyer</div></div>
        </div>
      </div>
      <div class="testimonial-card">
        <div class="stars">★★★★★</div>
        <p>“I love the minimalist design and the variety of products.”</p>
        <div style="display:flex;align-items:center;gap:12px;margin-top:12px;">
          <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=60&q=80" style="border-radius:40px;width:44px;height:44px;object-fit:cover;">
          <div><strong>Elena</strong><div style="font-size:0.8rem;opacity:0.6;">creator</div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- newsletter -->
  <section class="section container">
    <div class="newsletter-box">
      <h3 style="font-size:1.8rem;font-weight:600;">Join the club</h3>
      <p style="color:var(--muted);margin:6px 0 20px;">Get first dibs on drops & exclusive discounts</p>
      <form id="newsletterForm" style="display:flex;flex-wrap:wrap;justify-content:center;gap:12px;">
        <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
        <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:16px;font-weight:500;display:none;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-grid">
    <div>
      <div style="font-weight:700;font-size:1.3rem;display:flex;gap:6px;"><i class="fas fa-gem" style="color:var(--accent);"></i> LUMINA</div>
      <p style="max-width:260px;margin-top:8px;">Minimalist e‑commerce for the modern soul.</p>
    </div>
    <div style="display:flex;gap:40px;flex-wrap:wrap;">
      <div><strong>Explore</strong><div style="margin-top:6px;line-height:2;opacity:0.7;">New arrivals<br>Collections<br>About</div></div>
      <div><strong>Help</strong><div style="margin-top:6px;line-height:2;opacity:0.7;">FAQ<br>Shipping<br>Contact</div></div>
    </div>
  </div>
  <div style="text-align:center;margin-top:32px;font-size:0.8rem;opacity:0.5;">© <span id="year"></span> LUMINA · all rights reserved</div>
</footer>

<script>
  // ----- data -----
  const CATEGORIES = [
    { id: 'phones', name: 'Phones', icon: 'fa-mobile-alt' },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
    { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
    { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
  ];

  const PRODUCTS = [
    { id:1, title:'iPhone 14 Pro', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category:'phones' },
    { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category:'laptops' },
    { id:3, title:'Apple Watch S8', price:349, oldPrice:399, rating:5, reviews:214, badge:'-25%', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category:'accessories' },
    { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category:'footwear' },
    { id:5, title:'Sony A7 IV', price:2499, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category:'gadgets' },
    { id:6, title:'Chanel No.5', price:120, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category:'accessories' },
    { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category:'accessories' },
    { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category:'gadgets' }
  ];

  // ----- refs -----
  const categoriesGrid = document.getElementById('categoriesGrid');
  const productsGrid = document.getElementById('productsGrid');
  const cartCountEl = document.getElementById('cartCount');
  const searchInput = document.getElementById('searchInput');
  const searchBtn = document.getElementById('searchBtn');
  const mobileToggle = document.getElementById('mobileToggle');
  const mobileMenu = document.getElementById('mobileMenu');
  let cartCount = 0;

  // ----- render helpers -----
  function escapeHtml(text) {
    return String(text).replace(/[&<>"']/g, s => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'})[s]);
  }

  function renderCategories() {
    categoriesGrid.innerHTML = '';
    CATEGORIES.forEach(cat => {
      const el = document.createElement('div');
      el.className = 'cat-card';
      el.innerHTML = `<i class="fas ${cat.icon}"></i><h4>${cat.name}</h4>`;
      el.addEventListener('click', () => {
        searchInput.value = cat.name;
        filterProducts(cat.name);
        document.getElementById('products').scrollIntoView({ behavior:'smooth', block:'start' });
      });
      categoriesGrid.appendChild(el);
    });
  }

  function renderProducts(list) {
    productsGrid.innerHTML = '';
    list.forEach(p => {
      const el = document.createElement('div');
      el.className = 'product-card';
      const badgeHtml = p.badge ? `<div style="position:absolute;margin:12px;background:${p.badge.startsWith('-')?'#ff6b6b':'#b892ff'};color:#0e0e1a;padding:4px 14px;border-radius:40px;font-weight:600;font-size:0.75rem;z-index:2;">${p.badge}</div>` : '';
      el.innerHTML = `
        <div style="position:relative;">${badgeHtml}<img src="${p.img}" alt="${escapeHtml(p.title)}"></div>
        <div class="product-body">
          <h5>${escapeHtml(p.title)}</h5>
          <div style="font-size:0.8rem;opacity:0.5;">${p.category}</div>
          <div class="product-meta">
            <div><span class="price">$${p.price.toLocaleString()}</span>${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
            <div class="rating">${'★'.repeat(Math.round(p.rating))}</div>
          </div>
        </div>
        <div class="product-footer">
          <button class="add-btn" data-id="${p.id}"><i class="fas fa-plus"></i> Add</button>
          <button class="wish-btn"><i class="far fa-heart"></i></button>
        </div>
      `;
      productsGrid.appendChild(el);
    });
    document.querySelectorAll('.add-btn').forEach(btn => {
      btn.addEventListener('click', () => {
        const id = Number(btn.dataset.id);
        addToCart(id);
      });
    });
  }

  function filterProducts(query) {
    const q = String(query || '').trim().toLowerCase();
    if (!q) { renderProducts(PRODUCTS); return; }
    const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
    renderProducts(filtered);
  }

  function addToCart(id) {
    const p = PRODUCTS.find(x => x.id === id);
    if (!p) return;
    cartCount++;
    cartCountEl.textContent = cartCount;
    const btn = document.querySelector(`.add-btn[data-id="${id}"]`);
    if (btn) {
      const orig = btn.innerHTML;
      btn.innerHTML = '✓ Added';
      btn.disabled = true;
      setTimeout(() => { btn.innerHTML = orig; btn.disabled = false; }, 1000);
    }
  }

  // ----- search -----
  searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
  searchInput.addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });

  // ----- mobile menu -----
  mobileToggle.addEventListener('click', () => mobileMenu.classList.toggle('open'));

  // ----- newsletter -----
  document.getElementById('newsletterForm').addEventListener('submit', (e) => {
    e.preventDefault();
    const email = document.getElementById('newsletterEmail').value.trim();
    const msg = document.getElementById('newsletterMsg');
    if (!email || !email.includes('@')) {
      msg.style.display = 'block';
      msg.textContent = 'Please enter a valid email.';
      msg.style.color = '#b34a4a';
      return;
    }
    msg.style.display = 'block';
    msg.textContent = '✨ You\'re in! Welcome to LUMINA.';
    msg.style.color = '#1e1e2f';
    document.getElementById('newsletterEmail').value = '';
    setTimeout(() => msg.style.display = 'none', 3200);
  });

  // ----- countdown -----
  (function setupTimer() {
    const now = new Date();
    const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);
    function tick() {
      const diff = target - new Date();
      if (diff <= 0) return;
      document.getElementById('dealDays').textContent = Math.floor(diff / (24*3600*1000));
      document.getElementById('dealHours').textContent = String(Math.floor((diff % (24*3600*1000)) / (3600*1000))).padStart(2,'0');
      document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600*1000)) / (60*1000))).padStart(2,'0');
      document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (60*1000)) / 1000)).padStart(2,'0');
    }
    tick();
    setInterval(tick, 1000);
  })();

  // ----- other UI -----
  document.getElementById('shopNow').addEventListener('click', () => document.getElementById('products').scrollIntoView({ behavior:'smooth' }));
  document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior:'smooth' }));
  document.getElementById('buyDeal').addEventListener('click', () => {
    cartCount++;
    cartCountEl.textContent = cartCount;
    alert('🔥 MacBook Air M2 added to cart (demo)');
  });
  document.getElementById('year').textContent = new Date().getFullYear();

  // ----- init -----
  renderCategories();
  renderProducts(PRODUCTS);
  cartCountEl.textContent = 0;
</script>
</body>
</html>
