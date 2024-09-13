// src/Test.res
@react.component
let make = () => {
  <div> {React.string("Hello World with Rescript & React")} </div>
}

// Export the component
@module 
external testComponent: unit => React.element = "src/Test.res.mjs"