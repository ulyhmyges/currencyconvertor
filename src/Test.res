// src/Test.res
@react.component
let make = (~className: option<string>=?, ()) => {
  let class = switch className {
  | Some(v) => v
  | None => ""
  }

  <div className={class}>
    <h3> {React.string("Hello World with Rescript & React !")} </h3>
    <p style={ReactDOM.Style.make(~backgroundColor="aqua", ~color="blue", ~fontSize="38px", ())}>{React.string("Someting")}</p>
  </div>
}

// Export the component
// @module
// external testComponent: unit => React.element = "src/Test.res.mjs"
