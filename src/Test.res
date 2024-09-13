// src/Test.res
@react.component
let make = () => {
  <div> <h3>{React.string("Hello World with Rescript & React !")}</h3> </div>
}

// Export the component
// @module 
// external testComponent: unit => React.element = "src/Test.res.mjs"