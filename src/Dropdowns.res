// src/Dropdowns.res
@react.component
let make = () => {
  // Define a list of items
  let items = ["Item 1", "Item 2", "Item 3", "Item 4"] // get the item by index returns an Option !

  // State to keep track of selected values for each dropdown
  let (selectedItem1, setSelectedItem1) = React.useState(_ => Option.getOr(items[0], "no item1"))
  let (selectedItem2, setSelectedItem2) = React.useState(_ => Option.getOr(items[1], "no item2"))
  let (text, setText) = React.useState(_ => "")
  let (textButton, setTextButton) = React.useState(_ => "")

  // Event handlers for updating state
  let handleItem1Change = event => {
    let value = ReactEvent.Form.target(event)["value"]
    setSelectedItem1(_prev => value)
  }

  let handleItem2Change = (event: JsxEvent.Form.t) => {
    let target = JsxEvent.Form.target(event)
    let value = target["value"]
    setSelectedItem2(_prev => value)
  }

  let onChange = event => {
    let value = ReactEvent.Form.target(event)["value"]
    setText(_prev => value)
  }

   let handleButton = _evt => {
      setTextButton(_prev => text)
    }
  let () = Js.log(text)
  
  let container = ReactDOM.Style.make(~padding="20px", ())
  let item = ReactDOM.Style.make(~paddingBottom="20px", ())

  <div style=container>

    <div style=item>
      <input onChange value=text type_="number" />
    </div>

    <div style=item>
      <label> {React.string("Select Item 1:")} </label>
      <select value=selectedItem1 onChange={handleItem1Change}>
        {React.array(
          items->Array.map(item => <option key={item} value={item}> {React.string(item)} </option>),
        )}
      </select>
    </div>

    <div style=item>
      <label> {React.string("Select Item 2:")} </label>
      <select value={selectedItem2} onChange={handleItem2Change}>
        {React.array(
          items->Array.map(item => <option key={item} value={item}> {React.string(item)} </option>),
        )}
      </select>
    </div>

    <div style=item>
  
      <Button onClick={handleButton}>{React.string("Refresh: "++ textButton)}</Button>
    </div>
  </div>
}
