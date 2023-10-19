type background = {
    color? : string,
    image?: string,
    opacity?: float,
    position?: string,
    repeat?: string,
    size?: string
}

type backgroundmaskcover = {
    color?: string,
    opacity?: float
}
type cover = {

}
type backgroundMask = {
    cover? : string,
    enable? : bool
}
type backgroundMode = {
    bool? : bool,
}
type rangeValue = {
    number? : float,
    max?: float,
    min?: float
}
type delay = {
    rangeValue? : rangeValue
}

type detectRetina = {
    bool?: bool
}
type duration = {
    rangeValue? : rangeValue
}
type fpsLimit = {
    fpsLimit?: int
}
type fullScreen = {
    fullScreen?: bool
}
type interactivity = {
    interactivity?: string
}
type modeCorodinate = [|#percent |#precise]
type coordinatesWithMode = {
    mode?: modeCorodinate,
    x?: float,
    y?: float
}
type manualParticles = {
    option? : string,
    position?: modeCorodinate
}
type name = {
    name? : string
}
type particles = {
    particles?: string
}
type pauseOnBlur = {
    pauseOnBlur?: bool
}
type pauseOnOutesideViewport = {
    pauseOnOutesideViewport?: bool
}
type preset = {
    preset?: string
}

type modeResponsive = [|#screen |#canvas]
type responsive = {
    maxWidth?: int,
    mode?: modeResponsive,
    option?: string
}
type retina_detect = {
    retina_detect?: bool
}
type smooth = {
    smooth?: bool
}
type style = {
    stype?: string
}

type modeTheme = [|#any |#light |#dark]

type themeDefault = {
    auto: bool,
    mode: modeTheme,
    value: bool
}

type themes = {
    default? : themeDefault,
    name?: string,
    options?: string
}
type zLayers = {
    zLayers: float
}

type options = {
    // autoPlay?: bool,
    background?: background,
    // backgroundMask?: backgroundMask,
    // backgroundMode?: backgroundMode,
    // delay?: delay,
    // detectRetina? : detectRetina,
    // duration?: duration,
    fpsLimit?: int,
    // fps_limit?: int,
    // fullScreen?: fullScreen,
    // interactivity?: interactivity,
    // manualParticles?: manualParticles,
    // name?: name,
    // particles?: particles,
    // pauseOnBlur?: pauseOnBlur,
    // pauseOnOutesideViewport?: pauseOnOutesideViewport,
    // preset?: preset,
    // responsive?: responsive,
    // retina_detect?: retina_detect,
    // smooth?: smooth,
    // style?: style,
    // themes?: themes,
    // zLayers?: zLayers
}




// @module("react-particles")
// external make: React.component<props> = "default"
