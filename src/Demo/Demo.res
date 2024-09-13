
// src/Demo.res
@react.component
let make = () => {
  <div>
    <Test className={"root"}/>
    <Dropdowns />
  </div>
}


// set of attributes
@module external styles: {..} = "../../../../src/Demo/styles.module.scss"