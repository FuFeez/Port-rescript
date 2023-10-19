open System

type classes = {
  /** Styles applied to the root element. */
  root?: string,
  /** Styles applied to the root element if `variant="body2"`. */
  body2?: string,
  /** Styles applied to the root element if `variant="body1"`. */
  body1?: string,
  /** Styles applied to the root element if `variant="caption"`. */
  caption?: string,
  /** Styles applied to the root element if `variant="button"`. */
  button?: string,
  /** Styles applied to the root element if `variant="h1"`. */
  h1?: string,
  /** Styles applied to the root element if `variant="h2"`. */
  h2?: string,
  /** Styles applied to the root element if `variant="h3"`. */
  h3?: string,
  /** Styles applied to the root element if `variant="h4"`. */
  h4?: string,
  /** Styles applied to the root element if `variant="h5"`. */
  h5?: string,
  /** Styles applied to the root element if `variant="h6"`. */
  h6?: string,
  /** Styles applied to the root element if `variant="subtitle1"`. */
  subtitle1?: string,
  /** Styles applied to the root element if `variant="subtitle2"`. */
  subtitle2?: string,
  /** Styles applied to the root element if `variant="overline"`. */
  overline?: string,
  /** Styles applied to the root element if `variant="inherit"`. */
  inherit?: string,
  /** Styles applied to the root element if `align="left"`. */
  alignLeft?: string,
  /** Styles applied to the root element if `align="center"`. */
  alignCenter?: string,
  /** Styles applied to the root element if `align="right"`. */
  alignRight?: string,
  /** Styles applied to the root element if `align="justify"`. */
  alignJustify?: string,
  /** Styles applied to the root element if `nowrap={true}`. */
  noWrap?: string,
  /** Styles applied to the root element if `gutterBottom={true}`. */
  gutterBottom?: string,
  /** Styles applied to the root element if `paragraph={true}`. */
  paragraph?: string,
}

type align = [|#inherit |#left |#center |#right |#justify]


type variant = [|#body1 |#body2 |#button |#caption |#h1 |#h2 |#h3 |#h4 |#h5 |#h6 |#inherit |#overline |#subtitle1 |#subtitle2 |#string(string)]


type variantMapping = {
  h1: variant,
  h2: variant,
  h3: variant,
  h4: variant,
  h5: variant,
  h6: variant,
  subtitle1: variant,
  subtitle2: variant,
  body1: variant,
  body2: variant,
  inherit: variant,
}

type publicProps = {
  className?: string,
  style?: ReactDOM.Style.t,
  ref?: ReactDOM.domRef,
  id?: string,
  border?: Value.t,
  borderBottom?: Value.t,
  borderColor?: Value.t,
  borderLeft?: Value.t,
  borderRadius?: Value.t,
  borderRight?: Value.t,
  borderTop?: Value.t,
  boxShadow?: Value.t,
  displayPrint?: Value.t,
  display?: Value.t,
  alignContent?: Value.t,
  alignItems?: Value.t,
  alignSelf?: Value.t,
  flex?: Value.t,
  flexDirection?: Value.t,
  flexGrow?: Value.t,
  flexShrink?: Value.t,
  flexWrap?: Value.t,
  justifyContent?: Value.t,
  order?: Value.t,
  gap?: Value.t,
  columnGap?: Value.t,
  rowGap?: Value.t,
  gridColumn?: Value.t,
  gridRow?: Value.t,
  gridAutoFlow?: Value.t,
  gridAutoColumns?: Value.t,
  gridAutoRows?: Value.t,
  gridTemplateColumns?: Value.t,
  gridTemplateRows?: Value.t,
  gridTemplateAreas?: Value.t,
  gridArea?: Value.t,
  bgcolor?: Value.t,
  color?: Value.t,
  bottom?: Value.t,
  left?: Value.t,
  position?: Value.t,
  right?: Value.t,
  top?: Value.t,
  zIndex?: Value.t,
  height?: Value.t,
  maxHeight?: Value.t,
  maxWidth?: Value.t,
  minHeight?: Value.t,
  minWidth?: Value.t,
  width?: Value.t,
  boxSizing?: Value.t,
  m?: Value.t,
  margin?: Value.t,
  mb?: Value.t,
  marginBottom?: Value.t,
  ml?: Value.t,
  marginLeft?: Value.t,
  mr?: Value.t,
  marginRight?: Value.t,
  mt?: Value.t,
  marginTop?: Value.t,
  mx?: Value.t,
  marginX?: Value.t,
  my?: Value.t,
  marginY?: Value.t,
  marginInline?: Value.t,
  marginInlineStart?: Value.t,
  marginInlineEnd?: Value.t,
  marginBlock?: Value.t,
  marginBlockStart?: Value.t,
  marginBlockEnd?: Value.t,
  p?: Value.t,
  padding?: Value.t,
  pb?: Value.t,
  paddingBottom?: Value.t,
  pl?: Value.t,
  paddingLeft?: Value.t,
  pr?: Value.t,
  paddingRight?: Value.t,
  pt?: Value.t,
  paddingTop?: Value.t,
  px?: Value.t,
  paddingX?: Value.t,
  py?: Value.t,
  paddingY?: Value.t,
  paddingInline?: Value.t,
  paddingInlineStart?: Value.t,
  paddingInlineEnd?: Value.t,
  paddingBlock?: Value.t,
  paddingBlockStart?: Value.t,
  paddingBlockEnd?: Value.t,
  typography?: Value.t,
  fontFamily?: Value.t,
  fontSize?: Value.t,
  fontStyle?: Value.t,
  fontWeight?: Value.t,
  letterSpacing?: Value.t,
  lineHeight?: Value.t,
  textAlign?: Value.t,
  /**
    * Set the text-align on the component.
    * @default 'inherit'
    */
  align?: align,
  /**
    * The component used for the root node.
    * Either a string to use a HTML element or a component.
    */
  component?: OverridableComponent.t<unknown>,
  /**
    * If `true`, the text will have a bottom margin.
    * @default false
    */
  gutterBottom?: bool,
  /**
    * If `true`, the text will not wrap, but instead will truncate with a text overflow ellipsis.
    *
    * Note that text overflow can only happen with block or inline-block level elements
    * (the element needs to have a width in order to overflow).
    * @default false
    */
  noWrap?: bool,
  /**
    * If `true`, the element will be a paragraph element.
    * @default false
    */
  paragraph?: bool,
  /**
    * Applies the theme typography styles.
    * @default 'body1'
    */
  variant?: variant,
  /**
    * The component maps the variant prop to a range of different HTML element types.
    * For instance, subtitle1 to `<h6>`.
    * If you wish to change that mapping, you can provide your own.
    * Alternatively, you can use the `component` prop.
    * @default {
    *   h1: 'h1',
    *   h2: 'h2',
    *   h3: 'h3',
    *   h4: 'h4',
    *   h5: 'h5',
    *   h6: 'h6',
    *   subtitle1: 'h6',
    *   subtitle2: 'h6',
    *   body1: 'p',
    *   body2: 'p',
    *   inherit: 'p',
    * }
    */
  variantMapping?: variantMapping,
}

type props = {
 className?: string,
  style?: ReactDOM.Style.t,
  ref?: ReactDOM.domRef,
  id?: string,
  border?: Value.t,
  borderBottom?: Value.t,
  borderColor?: Value.t,
  borderLeft?: Value.t,
  borderRadius?: Value.t,
  borderRight?: Value.t,
  borderTop?: Value.t,
  boxShadow?: Value.t,
  displayPrint?: Value.t,
  display?: Value.t,
  alignContent?: Value.t,
  alignItems?: Value.t,
  alignSelf?: Value.t,
  flex?: Value.t,
  flexDirection?: Value.t,
  flexGrow?: Value.t,
  flexShrink?: Value.t,
  flexWrap?: Value.t,
  justifyContent?: Value.t,
  order?: Value.t,
  gap?: Value.t,
  columnGap?: Value.t,
  rowGap?: Value.t,
  gridColumn?: Value.t,
  gridRow?: Value.t,
  gridAutoFlow?: Value.t,
  gridAutoColumns?: Value.t,
  gridAutoRows?: Value.t,
  gridTemplateColumns?: Value.t,
  gridTemplateRows?: Value.t,
  gridTemplateAreas?: Value.t,
  gridArea?: Value.t,
  bgcolor?: Value.t,
  color?: Value.t,
  bottom?: Value.t,
  left?: Value.t,
  position?: Value.t,
  right?: Value.t,
  top?: Value.t,
  zIndex?: Value.t,
  height?: Value.t,
  maxHeight?: Value.t,
  maxWidth?: Value.t,
  minHeight?: Value.t,
  minWidth?: Value.t,
  width?: Value.t,
  boxSizing?: Value.t,
  m?: Value.t,
  margin?: Value.t,
  mb?: Value.t,
  marginBottom?: Value.t,
  ml?: Value.t,
  marginLeft?: Value.t,
  mr?: Value.t,
  marginRight?: Value.t,
  mt?: Value.t,
  marginTop?: Value.t,
  mx?: Value.t,
  marginX?: Value.t,
  my?: Value.t,
  marginY?: Value.t,
  marginInline?: Value.t,
  marginInlineStart?: Value.t,
  marginInlineEnd?: Value.t,
  marginBlock?: Value.t,
  marginBlockStart?: Value.t,
  marginBlockEnd?: Value.t,
  p?: Value.t,
  padding?: Value.t,
  pb?: Value.t,
  paddingBottom?: Value.t,
  pl?: Value.t,
  paddingLeft?: Value.t,
  pr?: Value.t,
  paddingRight?: Value.t,
  pt?: Value.t,
  paddingTop?: Value.t,
  px?: Value.t,
  paddingX?: Value.t,
  py?: Value.t,
  paddingY?: Value.t,
  paddingInline?: Value.t,
  paddingInlineStart?: Value.t,
  paddingInlineEnd?: Value.t,
  paddingBlock?: Value.t,
  paddingBlockStart?: Value.t,
  paddingBlockEnd?: Value.t,
  typography?: Value.t,
  fontFamily?: Value.t,
  fontSize?: Value.t,
  fontStyle?: Value.t,
  fontWeight?: Value.t,
  letterSpacing?: Value.t,
  lineHeight?: Value.t,
  textAlign?: Value.t,
  /**
    * Set the text-align on the component.
    * @default 'inherit'
    */
  align?: align,
  /**
    * The component used for the root node.
    * Either a string to use a HTML element or a component.
    */
  component?: OverridableComponent.t<unknown>,
  /**
    * If `true`, the text will have a bottom margin.
    * @default false
    */
  gutterBottom?: bool,
  /**
    * If `true`, the text will not wrap, but instead will truncate with a text overflow ellipsis.
    *
    * Note that text overflow can only happen with block or inline-block level elements
    * (the element needs to have a width in order to overflow).
    * @default false
    */
  noWrap?: bool,
  /**
    * If `true`, the element will be a paragraph element.
    * @default false
    */
  paragraph?: bool,
  /**
    * Applies the theme typography styles.
    * @default 'body1'
    */
  variant?: variant,
  /**
    * The component maps the variant prop to a range of different HTML element types.
    * For instance, subtitle1 to `<h6>`.
    * If you wish to change that mapping, you can provide your own.
    * Alternatively, you can use the `component` prop.
    * @default {
    *   h1: 'h1',
    *   h2: 'h2',
    *   h3: 'h3',
    *   h4: 'h4',
    *   h5: 'h5',
    *   h6: 'h6',
    *   subtitle1: 'h6',
    *   subtitle2: 'h6',
    *   body1: 'p',
    *   body2: 'p',
    *   inherit: 'p',
    * }
    */
  variantMapping?: variantMapping,
  /**
    * The content of the component.
    */
  children?: React.element,
  /**
    * Override or extend the styles applied to the component.
    */
  classes?: classes,
  /**
    * The system prop that allows defining system overrides as well as additional CSS styles.
    */
  // sx?: Sx.props,
}

@module("@mui/material/Typography")
external make: React.component<props> = "default"
