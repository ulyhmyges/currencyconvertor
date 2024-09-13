Console.log("Hello, world")

// src/Demo.res
@react.component
let make = () => {
  <div>
    // {Test.make()}
    {Test.testComponent()}
  </div>
}
