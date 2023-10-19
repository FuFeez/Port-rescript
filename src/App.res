

@module external animation: Js.Json.t = "../../../src/assets/Thyroid-Network.json"

@react.component
let make = () => {

  <>

<Lottie animationData={animation} />

</>

}