
type classes = {
  /** Styles applied to the root element. */
  root?: string,
  /** Styles applied to the root element if `margin="normal"`. */
  marginNormal?: string,
  /** Styles applied to the root element if `margin="dense"`. */
  marginDense?: string,
  /** Styles applied to the root element if `fullWidth={true}`. */
  fullWidth?: string,
}

type color = [|#primary |#secondary |#error |#info |#success |#warning |#string(string)]

type margin = [|#dense |#normal |#none]

type size = [|#small |#medium |#string(string)]


type variant = [|#standard |#outlined |#filled]


type publicProps = {
  className?: string,
  style?: ReactDOM.Style.t,
  ref?: ReactDOM.domRef,
  /**
    * The component used for the root node. Either a string to use a HTML element or a component.
    */
  component?: OverridableComponent.t<unknown>,
  /**
    * If `true`, the component is displayed in focused state.
    */
  focused?: bool,
  /**
    * If `true`, the label is hidden.
    * This is used to increase density for a `FilledInput`.
    * Be sure to add `aria-label` to the `input` element.
    * @default false
    */
  hiddenLabel?: bool,
  /**
    * If `dense` or `normal`, will adjust vertical spacing of this and contained components.
    * @default 'none'
    */
  margin?: margin,
}

type props = {
  className?: string,
  style?: ReactDOM.Style.t,
  ref?: ReactDOM.domRef,

  component?: OverridableComponent.t<unknown>,

  focused?: bool,
  hiddenLabel?: bool,
  margin?: margin,
  children?: React.element,
  classes?: classes,
  color?: color,

  disabled?: bool,
  /**
    * If `true`, the label is displayed in an error state.
    * @default false
    */
  error?: bool,
  /**
    * If `true`, the component will take up the full width of its container.
    * @default false
    */
  fullWidth?: bool,
  /**
    * If `true`, the label will indicate that the `input` is required.
    * @default false
    */
  required?: bool,
  /**
    * The size of the component.
    * @default 'medium'
    */
  size?: size,
  /**
    * The system prop that allows defining system overrides as well as additional CSS styles.
    */
  // sx?: Sx.props,
  /**
    * The variant to use.
    * @default 'outlined'
    */
  variant?: variant,
}

@module("@mui/material/FormControl")
external make: React.component<props> = "default"

type formControlState = {
  color?: color,
  disabled?: bool,
  error?: bool,
  fullWidth?: bool,
  hiddenLabel?: bool,
  margin?: margin,
  onBlur?: ReactEvent.Focus.t => unit,
  onFocus?: ReactEvent.Focus.t => unit,
  required?: bool,
  size?: size,
  variant?: variant,
  adornedStart: bool,
  filled: bool,
  focused: bool,
  onEmpty: unit => unit,
  onFilled: unit => unit,
  registerEffect: unit => unit,
  setAdornedStart: (bool => bool) => unit,
}

@module("@mui/material/FormControl")
external useFormControl: unit => formControlState = "useFormControl"
