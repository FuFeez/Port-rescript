type s3 = {
    a: float,
    k: float,
    ix: float,
    l: float,
  }
  type a3 = {
    a: float,
    k: float,
    ix: float,
    l: float,
  }
  type o4 = {
    x: float,
    y: float,
  }
  type i = {
    x: float,
    y: float,
  }
  type k3 = {
    i?: i,
    o?: o4,
    t: float,
    s: float,
    to?: float,
    ti?: float,
  }
  type p3 = {
    a: float,
    k: k3,
    ix: float,
    l: float,
  }
  type r2 = {
    a: float,
    k: float,
    ix: float,
  }
    
  type o3 = {
    a: float,
    k: float,
    ix: float,
  }
    
  type ks3 = {
    o: o3,
    r: r2,
    p: p3,
    a: a3,
    s: s3,
  }
    
  type layer2 = {
    ddd: float,
    ind: float,
    ty: float,
    nm: string,
    refId: string,
    sr: float,
    ks: ks3,
    ao: float,
    w: float,
    h: float,
    ip: float,
    op: float,
    st: float,
    bm: float,
  }
  type v = {
    a: float,
    k: array<int>,
    ix: float,
  }
    
  type ef2 = {
    ty: float,
    nm: string,
    mn: string,
    ix: float,
    v: v,
  }
    
  type ef = {
    ty: float,
    nm: string,
    np: float,
    mn: string,
    ix: float,
    en: float,
    ef: ef2,
  }
    
  type h = {
    a: float,
    k: float,
    ix: float,
  }
    
  type os = {
    a: float,
    k: float,
    ix: float,
  }
    
  type or = {
    a: float,
    k: float,
    ix: float,
  }
    
  type is = {
    a: float,
    k: float,
    ix: float,
  }
    
  type ir = {
    a: float,
    k: float,
    ix: float,
  }
    
  type pt = {
    a: float,
    k: float,
    ix: float,
  }
    
  type sa = {
    a: float,
    k: float,
    ix: float,
  }
    
  type sk = {
    a: float,
    k: float,
    ix: float,
  }
    
  type a2 = {
    a: float,
    k: array<int>,
    ix: float,
  }
    
  type p2 = {
    a: float,
    k: float,
    ix: float,
  }
    
  type m12 = {
    a: float,
    k: float,
    ix: float,
  }
    
  type e = {
    a: float,
    k: array<int>,
    ix: float,
  }
    
  type s2 = {
    a: float,
    k: array<int>,
    ix: float,
  }
   
  type k2 = {
    a: float,
    k: float,
    ix: float,
  }
     
  type g = {
    p: float,
    k: k2,
  }
    
  type w = {
    a: float,
    k: float,
    ix: float,
  }
    
  type o2 = {
    a: float,
    k: float,
    ix: float,
  }
    
  type k = {
    i: float,
    o: float,
    v: float,
    c: bool,
  }
    
  type ks2 = {
    a: float,
    k: k,
    ix: float,
  }
    
  type it = {
    ind?: float,
    ty: string,
    ix?: float,
    ks?: ks2,
    nm: string,
    mn?: string,
    hd?: bool,
    o?: o2,
    w?: w,
    g?: g,
    s?: s2,
    e?: e,
    t?: float,
    lc?: float,
    lj?: float,
    ml?: float,
    ml2?: m12,
    bm?: float,
    m?: float,
    p?: p2,
    a?: a2,
    r: array<int>,
    sk?: sk,
    sa?: sa,
    sy?: float,
    d?: float,
    pt?: pt,
    ir?: ir,
    is?: is,
    or?: or,
    os?: os,
    h?: h
  }
  type shape = {
    ty: string,
    it: it,
    nm: string,
    np: float,
    cix: float,
    bm: float,
    ix: float,
    mn: string,
    hd: bool,
  }
    
  type s = {
    a: float,
    k: array<int>,
    ix: float,
    l: float,
  }
    
  type a = {
    a: float,
    k: float,
    ix: float,
    l: float,
  }
    
  type p = {
    a: float,
    k: float,
    ix: float,
    l: float,
  }
    
  type r = {
    a: float,
    k: float,
    ix: float,
  }
    
  type o = {
    a: float,
    k: array<int>,
    ix: float,
  }
    
  type ks = {
    o: o,
    r: r,
    p: p,
    a: a,
    s: s,
  }
    
  type layer = {
    ddd: float,
    ind: float,
    ty: float,
    nm: string,
    refId?: string,
    sr: float,
    ks: ks,
    ao: float,
    w?: float,
    h?: float,
    ip: float,
    op: float,
    st: float,
    bm: float,
    shapes?: shape,
    ef?: ef,
    parent?: float,
  }
    
  type asset = {
    id: string,
    w?: float,
    h?: float,
    u?: string,
    p?: string,
    e?: float,
    nm?: string,
    fr?: float,
    layers?: layer
  }
  type json = {
    v: string,
    fr: float,
    ip: float,
    op: float,
    w: float,
    h: float,
    nm: string,
    ddd: float,
    assets: asset,
    layers: layer2,
    markers: array<int>,
  }

type props = {
  animationData : Js.Json.t
}


@module("lottie-react")
// external make: React.component<props> = "default"
external make: React.component<props> = "default"
