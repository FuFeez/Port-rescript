type props = {
  baskClassName?: string,
  children?: React.element,
  color?: [#inherit | #action |#disabled | #primary | #secondary | #error | #info | #success | #warning | #string(string)],
  fontSize?: [#inherit | #large | #medium | #small | #string(string)],
  style?: ReactDOM.Style.t,
}

@module("@mui/icons-material/Delete")
external make: React.component<props> = "default"