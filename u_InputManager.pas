unit u_InputManager;

interface

type TInputState = (etAdd,etRemove,etEdit,etBrowsing);

type TInputManager = class

private
  inputState : TInputState;

public
  property ActualState : TInputState read inputState write inputState;





end;

implementation

end.
