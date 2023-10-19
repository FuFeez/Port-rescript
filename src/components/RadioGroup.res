type props<'value> = {
  className?: string,
  style?: ReactDOM.Style.t,
  ref?: ReactDOM.domRef,
  id?: string,
  /**
    * The content of the component.
    */
  children?: React.element,
  /**
    * Override or extend the styles applied to the component.
    */
  /** Styles applied to the root element. */
  root?: string,
  /** Styles applied to the root element if `row={true}`. */
  // row?: string,
  /** State class applied to the root element if `error={true}`. */
  error?: string,
  /**
    * Display group of elements in a compact row.
    * @default false
    */
  row?: bool,
  /**
    * The default value. Use when the component is not controlled.
    */
  defaultValue?: 'value,
  /**
    * The name used to reference the value of the control.
    * If you don't provide this prop, it falls back to a randomly generated name.
    */
  name?: string,
  /**
    * Callback fired when a radio button is selected.
    *
    * @param {React.ChangeEvent<HTMLInputElement>} event The event source of the callback.
    * @param {string} value The value of the selected radio button.
    * You can pull out the new value by accessing `event.target.value` (string).
    */
  onChange?: (ReactEvent.Form.t, string) => unit,
  /**
    * Value of the selected radio button. The DOM API casts this to a string.
    */
  value?: 'value,
}

@module("@mui/material/RadioGroup")
external make: React.component<props<'value>> = "default"
