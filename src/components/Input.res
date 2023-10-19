open InputBase

type classes = {
  /** Styles applied to the root element. */
  root?: string,
  /** Styles applied to the root element if the component is a descendant of `FormControl`. */
  formControl?: string,
  /** Styles applied to the root element if the component is focused. */
  focused?: string,
  /** Styles applied to the root element if `disabled={true}`. */
  disabled?: string,
  /** Styles applied to the root element if color secondary. */
  colorSecondary?: string,
  /** Styles applied to the root element unless `disableUnderline={true}`. */
  underline?: string,
  /** State class applied to the root element if `error={true}`. */
  error?: string,
  /** Styles applied to the input element if `size="small"`. */
  sizeSmall?: string,
  /** Styles applied to the root element if `multiline={true}`. */
  multiline?: string,
  /** Styles applied to the root element if `fullWidth={true}`. */
  fullWidth?: string,
  /** Styles applied to the input element. */
  input?: string,
  /** Styles applied to the input element if `size="small"`. */
  inputSizeSmall?: string,
  /** Styles applied to the input element if `multiline={true}`. */
  inputMultiline?: string,
  /** Styles applied to the input element if `startAdornment` is provided. */
  inputAdornedStart?: string,
  inputAdornedEnd?: string,
  inputTypeSearch?: string,
}

type props<'value> = {
  className?: string,
  style?: ReactDOM.Style.t,
  ref?: ReactDOM.domRef,
  @as("aria-describedby") ariaDescribedby?: string,
  /**
    * This prop helps users to fill forms faster, especially on mobile devices.
    * The name can be confusing, as it's more like an autofill.
    * You can learn more about it [following the specification](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#autofill).
    */
  autoComplete?: string,
  /**
    * If `true`, the `input` element is focused during the first mount.
    */
  autoFocus?: bool,
  /**
    * The color of the component.
    * It supports both default and custom theme colors, which can be added as shown in the
    * [palette customization guide](https://mui.com/material-ui/customization/palette/#adding-new-colors).
    * The prop defaults to the value (`'primary'`) inherited from the parent FormControl component.
    */
  color?: color,
  /**
    * The default value. Use when the component is not controlled.
    */
  defaultValue?: 'value,
  /**
    * If `true`, the component is disabled.
    * The prop defaults to the value (`false`) inherited from the parent FormControl component.
    */
  disabled?: bool,
  /**
    * If `true`, GlobalStyles for the auto-fill keyframes will not be injected/removed on mount/unmount. Make sure to inject them at the top of your application.
    * This option is intended to help with boosting the initial rendering performance if you are loading a big amount of Input components at once.
    * @default false
    */
  disableInjectingGlobalStyles?: bool,
  /**
    * End `InputAdornment` for this component.
    */
  endAdornment?: React.element,
  /**
    * If `true`, the `input` will indicate an error.
    * The prop defaults to the value (`false`) inherited from the parent FormControl component.
    */
  error?: bool,
  /**
    * If `true`, the `input` will take up the full width of its container.
    * @default false
    */
  fullWidth?: bool,
  /**
    * The id of the `input` element.
    */
  id?: string,
  /**
    * The component used for the `input` element.
    * Either a string to use a HTML element or a component.
    * @default 'input'
    */
  inputComponent?: React.component<inputBaseComponentProps>,
  /**
    * [Attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#Attributes) applied to the `input` element.
    * @default {}
    */
  inputProps?: inputBaseComponentProps,
  /**
    * Pass a ref to the `input` element.
    */
  inputRef?: React.ref<'value>,
  /**
    * If `dense`, will adjust vertical spacing. This is normally obtained via context from
    * FormControl.
    * The prop defaults to the value (`'none'`) inherited from the parent FormControl component.
    */
  margin?: margin,
  /**
    * If `true`, a [TextareaAutosize](/material-ui/react-textarea-autosize/) element is rendered.
    * @default false
    */
  multiline?: bool,
  /**
    * Name attribute of the `input` element.
    */
  name?: string,
  /**
    * Callback fired when the `input` is blurred.
    *
    * Notice that the first argument (event) might be undefined.
    */
  onBlur?: ReactEvent.Focus.t => unit,
  onFocus?: ReactEvent.Focus.t => unit,
  onKeyDown?: ReactEvent.Keyboard.t => unit,
  onKeyUp?: ReactEvent.Keyboard.t => unit,
  /**
    * Callback fired when the `input` doesn't satisfy its constraints.
    */
  onInvalid?: ReactEvent.Form.t => unit,
  /**
    * The short hint displayed in the `input` before the user enters a value.
    */
  placeholder?: string,
  /**
    * It prevents the user from changing the value of the field
    * (not from interacting with the field).
    */
  readOnly?: bool,
  /**
    * If `true`, the `input` element is required.
    * The prop defaults to the value (`false`) inherited from the parent FormControl component.
    */
  required?: bool,
  renderSuffix?: renderSuffixState => React.element,
  /**
    * Number of rows to display when multiline option is set to true.
    */
  rows?: int,
  /**
    * Maximum number of rows to display when multiline option is set to true.
    */
  maxRows?: int,
  /**
    * Minimum number of rows to display when multiline option is set to true.
    */
  minRows?: int,
  /**
    * The size of the component.
    */
  size?: size,
  /**
    * The extra props for the slot components.
    * You can override the existing props or add new ones.
    * @default {}
    */
  slotProps?: slotProps,
  /**
    * The components used for each slot inside.
    * @default {}
    */
  slots?: slots,
  /**
    * Start `InputAdornment` for this component.
    */
  startAdornment?: React.element,
  /**
    * Type of the `input` element. It should be [a valid HTML5 input type](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#Form_%3Cinput%3E_types).
    * @default 'text'
    */
  @as("type")
  type_?: string,
  /**
    * The value of the `input` element, required for a controlled component.
    */
  value?: 'value,

  classes?: classes,

  disableUnderline?: bool,

  onChange?: ReactEvent.Form.t => unit,

  // sx?: Sx.props,
}

@module("@mui/material/Input")
external make: React.component<props<'value>> = "default"
