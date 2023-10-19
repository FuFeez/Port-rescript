

@module("tsparticles-slim") external loadSlim: (string) => Js.Promise.t<unit> = "loadSlim";
@module external animation: Js.Json.t = "../../../src/assets/Thyroid-Network.json"

@react.component
let make = () => {
  // <Checkbox {...label} defaultChecked size="small" />

  <>
// <Input placeholder="ใช้ได้รึยัง" />
// <Button variant=#text>{"test"->React.string}</Button>
// <FormControl>
//   <FormLabel id="demo-radio-buttons-group-label">{"Gender"->React.string}</FormLabel>
//   <RadioGroup
//     defaultValue="female"
//     name="radio-buttons-group"
//   >
//     <FormControlLabel value="female" control={<Radio />} label= React.string("Female") />
//     <FormControlLabel value="male" control={<Radio />} label= React.string("Male") />
//     <FormControlLabel value="other" control={<Radio />} label= React.string("Other") />
//   </RadioGroup>
// </FormControl>

// <ButtonGroup
//   disableElevation=(true)
//   variant=#contained
//   // aria-label="Disabled elevation buttons"
// >
//   <Button>("One"->React.string)</Button>
//   <Button>("Two"->React.string)</Button>
//   <DeleteIcon />
// </ButtonGroup>
<Lottie animationData={animation} />

</>

}