// https://reactcommunity.org/react-transition-group/transition#Transition-props
type publicProps = {
  className?: string,
  style?: ReactDOM.Style.t,
  ref?: ReactDOM.domRef,
  id?: string,
  addEndListener?: ReactEvent.Synthetic.t => unit,
  enter?: bool,
  exit?: bool,
  mountOnEnter?: bool,
  onEnter?: ReactEvent.Synthetic.t => unit,
  onEntered?: ReactEvent.Synthetic.t => unit,
  onEntering?: ReactEvent.Synthetic.t => unit,
  onExit?: ReactEvent.Synthetic.t => unit,
  onExited?: ReactEvent.Synthetic.t => unit,
  onExiting?: ReactEvent.Synthetic.t => unit,
  unmountOnExit?: bool,
}

type props = {
  className?: string,
  style?: ReactDOM.Style.t,
  ref?: ReactDOM.domRef,
  id?: string,
  addEndListener?: ReactEvent.Synthetic.t => unit,
  enter?: bool,
  exit?: bool,
  mountOnEnter?: bool,
  onEnter?: ReactEvent.Synthetic.t => unit,
  onEntered?: ReactEvent.Synthetic.t => unit,
  onEntering?: ReactEvent.Synthetic.t => unit,
  onExit?: ReactEvent.Synthetic.t => unit,
  onExited?: ReactEvent.Synthetic.t => unit,
  onExiting?: ReactEvent.Synthetic.t => unit,
  unmountOnExit?: bool,
  appear?: bool,
}

type durationObject = {
  appear?: int,
  enter?: int,
  exit?: int,
}

type duration = [#time(int) | #object(durationObject)]

type durationWithAuto = [#auto | #duration(int) | #object(durationObject)]

type easingObject = {
  enter?: string,
  exit?: string,
}

type easing = [#easing(string) | #object(easingObject)]

type delay // TODO

external propsFromObject: {..} => props = "%identity"
