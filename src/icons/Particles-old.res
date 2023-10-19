@module("particles.js") @react.component external make: (
    ~load: (string, string, () => unit) => unit=?,
) => React.element = "default";


