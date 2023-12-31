type classes = {
  /** Styles applied to the root element. */
  root?: string,
  /** Styles applied to the root element if `variant="text"`. */
  text?: string,
  /** Styles applied to the root element if `variant="text"` and `color="inherit"`. */
  textInherit?: string,
  /** Styles applied to the root element if `variant="text"` and `color="primary"`. */
  textPrimary?: string,
  /** Styles applied to the root element if `variant="text"` and `color="secondary"`. */
  textSecondary?: string,
  /** Styles applied to the root element if `variant="text"` and `color="success"`. */
  textSuccess?: string,
  /** Styles applied to the root element if `variant="text"` and `color="error"`. */
  textError?: string,
  /** Styles applied to the root element if `variant="text"` and `color="info"`. */
  textInfo?: string,
  /** Styles applied to the root element if `variant="text"` and `color="warning"`. */
  textWarning?: string,
  /** Styles applied to the root element if `variant="outlined"`. */
  outlined?: string,
  /** Styles applied to the root element if `variant="outlined"` and `color="inherit"`. */
  outlinedInherit?: string,
  /** Styles applied to the root element if `variant="outlined"` and `color="primary"`. */
  outlinedPrimary?: string,
  /** Styles applied to the root element if `variant="outlined"` and `color="secondary"`. */
  outlinedSecondary?: string,
  /** Styles applied to the root element if `variant="outlined"` and `color="success"`. */
  outlinedSuccess?: string,
  /** Styles applied to the root element if `variant="outlined"` and `color="error"`. */
  outlinedError?: string,
  /** Styles applied to the root element if `variant="outlined"` and `color="info"`. */
  outlinedInfo?: string,
  /** Styles applied to the root element if `variant="outlined"` and `color="warning"`. */
  outlinedWarning?: string,
  /** Styles applied to the root element if `variant="contained"`. */
  contained?: string,
  /** Styles applied to the root element if `variant="contained"` and `color="inherit"`. */
  containedInherit?: string,
  /** Styles applied to the root element if `variant="contained"` and `color="primary"`. */
  containedPrimary?: string,
  /** Styles applied to the root element if `variant="contained"` and `color="secondary"`. */
  containedSecondary?: string,
  /** Styles applied to the root element if `variant="contained"` and `color="success"`. */
  containedSuccess?: string,
  /** Styles applied to the root element if `variant="contained"` and `color="info"`. */
  containedInfo?: string,
  /** Styles applied to the root element if `variant="contained"` and `color="error"`. */
  containedError?: string,
  /** Styles applied to the root element if `variant="contained"` and `color="warning"`. */
  containedWarning?: string,
  /** Styles applied to the root element if `disableElevation={true}`. */
  disableElevation?: string,
  /** State class applied to the ButtonBase root element if the button is keyboard focused. */
  focusVisible?: string,
  /** State class applied to the root element if `disabled={true}`. */
  disabled?: string,
  /** Styles applied to the root element if `color="inherit"`. */
  colorInherit?: string,
  /** Styles applied to the root element if `size="small"` and `variant="text"`. */
  textSizeSmall?: string,
  /** Styles applied to the root element if `size="medium"` and `variant="text"`. */
  textSizeMedium?: string,
  /** Styles applied to the root element if `size="large"` and `variant="text"`. */
  textSizeLarge?: string,
  /** Styles applied to the root element if `size="small"` and `variant="outlined"`. */
  outlinedSizeSmall?: string,
  /** Styles applied to the root element if `size="medium"` and `variant="outlined"`. */
  outlinedSizeMedium?: string,
  /** Styles applied to the root element if `size="large"` and `variant="outlined"`. */
  outlinedSizeLarge?: string,
  /** Styles applied to the root element if `size="small"` and `variant="contained"`. */
  containedSizeSmall?: string,
  /** Styles applied to the root element if `size="medium"` and `variant="contained"`. */
  containedSizeMedium?: string,
  /** Styles applied to the root element if `size="large"` and `variant="contained"`. */
  containedSizeLarge?: string,
  /** Styles applied to the root element if `size="small"`. */
  sizeSmall?: string,
  /** Styles applied to the root element if `size="medium"`. */
  sizeMedium?: string,
  /** Styles applied to the root element if `size="large"`. */
  sizeLarge?: string,
  /** Styles applied to the root element if `fullWidth={true}`. */
  fullWidth?: string,
  /** Styles applied to the startIcon element if supplied. */
  startIcon?: string,
  /** Styles applied to the endIcon element if supplied. */
  endIcon?: string,
  /** Styles applied to the icon element if supplied and `size="small"`. */
  iconSizeSmall?: string,
  /** Styles applied to the icon element if supplied and `size="medium"`. */
  iconSizeMedium?: string,
  /** Styles applied to the icon element if supplied and `size="large"`. */
  iconSizeLarge?: string,
}

type color = [|#inherit |#primary |#secondary |#success |#error |#info |#warning |#string(string)]

type size = [|#small |#medium |#large |#string(string)]


type variant = [|#contained |#outlined |#text |#string(string)]


type props = {
  children?: React.element,
  className?: string,
  style?: ReactDOM.Style.t,
  ref?: ReactDOM.domRef,
  id?: string,
  onBlur?: ReactEvent.Focus.t => unit,
  onContextMenu?: ReactEvent.Mouse.t => unit,
  onDragLeave?: ReactEvent.Mouse.t => unit,
  onFocus?: ReactEvent.Focus.t => unit,
  onKeyDown?: ReactEvent.Keyboard.t => unit,
  onKeyPress?: ReactEvent.Keyboard.t => unit,
  onKeyUp?: ReactEvent.Keyboard.t => unit,
  onMouseDown?: ReactEvent.Mouse.t => unit,
  onMouseLeave?: ReactEvent.Mouse.t => unit,
  onMouseUp?: ReactEvent.Mouse.t => unit,
  onTouchEnd?: ReactEvent.Touch.t => unit,
  onTouchMove?: ReactEvent.Touch.t => unit,
  onTouchStart?: ReactEvent.Touch.t => unit,
  onClick?: ReactEvent.Mouse.t => unit,
  /**
    * Override or extend the styles applied to the component.
    */
  classes?: classes,
  /**
    * The color of the component.
    * It supports both default and custom theme colors, which can be added as shown in the
    * [palette customization guide](https://mui.com/material-ui/customization/palette/#adding-new-colors).
    * @default 'primary'
    */
  color?: color,
  /**
    * If `true`, the component is disabled.
    * @default false
    */
  disabled?: bool,
  /**
    * If `true`, no elevation is used.
    * @default false
    */
  disableElevation?: bool,
  /**
    * If `true`, the  keyboard focus ripple is disabled.
    * @default false
    */
  disableFocusRipple?: bool,
  /**
    * Element placed after the children.
    */
  endIcon?: React.element,
  /**
    * If `true`, the button will take up the full width of its container.
    * @default false
    */
  fullWidth?: bool,
  /**
    * The size of the component.
    * `small` is equivalent to the dense button styling.
    * @default 'medium'
    */
  size?: size,
  /**
    * Element placed before the children.
    */
  startIcon?: React.element,
  /**
    * The system prop that allows defining system overrides as well as additional CSS styles.
    */
  // sx?: Sx.props,
  /**
    * The variant to use.
    * @default 'text'
    */
  variant?: variant,
}

@module("@mui/material/Button")
external make: React.component<props> = "default"

