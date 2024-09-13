Console.log("Hello, world")

// src/Demo.res
@react.component
let make = () => {
  <div>
    // {Test.make()}
    <Test />
  </div>
}


// Export the component
// @module 
// external demoComponent: unit => React.element = "src/Demo.res.mjs"