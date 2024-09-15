// Styling from https://tailwind-elements.com/docs/standard/components/buttons/

let buttonStyle = ReactDOM.Style.make(
  ~backgroundColor="#002efb",
  ~border="none",
  ~color="white",
  ~padding="15px 32px",
  ~textAlign="center",
  ~textDecoration="none",
  ~display="inline-block",
  ~fontSize="16px",
  ~margin="4px 2px",
  ~cursor="pointer",
  ~borderRadius="12px",
  ~transition="background-color 0.3s ease, transform 0.3s ease",
  ()
)

let hoverStyle = ReactDOM.Style.make(
  ~backgroundColor="#1d28cd",
  ~transform="scale(1.05)",
  ()
)

@react.component
let make = (~onClick: ReactEvent.Mouse.t => unit, ~children: React.element) => {
  let (isHoverState, setIsHoverState) = React.useState( _ => false)
  <button
    onClick
    style={isHoverState ? ReactDOM.Style.combine(buttonStyle, hoverStyle) : buttonStyle}
    onMouseEnter={ _evt => setIsHoverState(_prev => true)}
    onMouseLeave={ _evt => setIsHoverState(_prev => false)}
    >
    children
  </button>
}
