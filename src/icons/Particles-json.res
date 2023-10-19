// number
type density = {
  enable?: bool,
  value_area?: int,
}
type number = {
  value?: int,
  density?: density,
}

// color
type rgb = {
  r?: int,
  g?: int,
  b?: int,
}
type hsl = {
  h?: int,
  s?: int,
  l?: int,
}
type value = {
  hex?: string,
  rgb?: rgb,
  hsl?: hsl,
  array?: array<string>,
  random?: string,
}

type color = {value?: value}

type colorStroke = {hex?: string}
type stroke = {
  width?: int,
  color?: colorStroke,
}
type polygon = {nb_slides?: int}
type image = {
  src?: string,
  width?: int,
  height?: int,
}

module TypeShape = {
  type typeShape
  external string: string => typeShape = "%identity"
  external arraySelection: array<string> => typeShape = "%identity"

  type shape = {
    type_?: typeShape,
    stroke?: stroke,
    polygon?: polygon,
    image?: image,
  }
}

// opacity
type anim = {
  enable?: bool,
  speed?: int,
  opacity_min?: float,
  sync?: bool,
}
type opacity = {
  value?: float,
  random?: bool,
  anim?: anim,
}

// size
type animSize = {
  enable?: bool,
  speed?: int,
  size_min?: float,
  sync?: bool,
}
type size = {
  value?: int,
  random?: bool,
  anim?: animSize,
}

// link_linked
type line_linked = {
  enable?: bool,
  distance?: int,
  color?: string,
  opacity?: float,
  width?: float,
}

// move
type attract = {
  enable?: bool,
  rotateX?: int,
  rotateY?: int,
}
type move = {
  enable?: bool,
  speed?: int,
  direction?: string,
  random?: bool,
  straight?: bool,
  out_mode?: string,
  bounce?: bool,
  attract?: attract,
}
type particles = {
  number?: number,
  color?: color,
  shape?: TypeShape.typeShape,
  opacity?: opacity,
  size?: size,
  line_linked?: line_linked,
  move?: move,
}

// interactivity
type line_linked_grab = {opacity?: float}

type grab = {
  distance?: int,
  line_linked?: line_linked_grab,
}
type bubble = {
  distance?: int,
  size?: int,
  duration?: float,
}
type repulse = {
  duration?: float,
  distance?: int,
}
type push = {particles_nb?: int}

type modes = {
  grab?: grab,
  bubble?: bubble,
  repulse?: repulse,
  push?: push,
}

type eventsModes
external string: string => eventsModes = "%identity"
external arraySelection: array<string> => eventsModes = "%identity"

type onhover = {
  enable?: bool,
  mode?: eventsModes,
}
type onclick = {
  enable?: bool,
  mode?: eventsModes,
}

type events = {
  onhover?: onhover,
  onclick?: onclick,
  resize?: bool,
  modes?: modes,
}
type interactivity = {
  detect_on?: string,
  events?: events,
}

type params = {
  particles?: particles,
  interactivity?: interactivity,
  retina_detect?: bool,
}
type props = {params?: params}

@module("particles.js")
external make: React.component<params> = "default"
