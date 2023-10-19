module Breakpoint = {
  
  type breakpoint = [| #string(string) | #bool(bool) | #number(float)]

  type t = {
    xs?: breakpoint,
    sm?: breakpoint,
    md?: breakpoint,
    lg?: breakpoint,
    xl?: breakpoint,
  }

  external fromObj: {..} => t = "%identity"
  external toObj: t => {..} = "%identity"
}

module Value = {
  type rec t = [ |#commonblack |#commonwhite |#primarylight |#primarymain |#primarydark |#primarycontrasttext |#secondarylight |#secondarymain |#secondarydark |#secondarycontrasttext |#errorlight |#errormain |#errordark |#errorcontrasttext |#warninglight |#warningmain |#warningdark |#warningcontrasttext |#infolight |#infomain |#infodark |#infocontrasttext |#successlight |#successmain |#successdark |#successcontrasttext |#textprimary |#textsecondary |#textdisabled |#texthint |#divider |#actionactive |#actionhover |#actionhoveropacity |#actionselected |#actionselectedopacity |#actiondisabled |#actiondisabledopacity |#actiondisabledbackground |#actionfocus |#actionfocusopacity |#actionactivatedopacity |#backgrounddefault |#backgroundpaper |#normal |#stretch |#center |#start |#end |#flexstart |#flexend |#selfstart |#selfend |#baseline |#inherit |#initial |#revert |#revertlayer |#unset 

    |#string(string)
    |#bool(bool)
    |#number(float)
    |#breakpoint(Breakpoint.t)
    |#array(array<t>)

]

}

/** CSS system properties */
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
}
