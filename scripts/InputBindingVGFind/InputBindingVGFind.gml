// Feather disable all

/// Returns all verbs (and alternate slots) that use the specified binding. This function returns
/// an array of structs. If the array is empty then no verbs that use the binding were found. The
/// structs contain two values:
/// - `.verbIndex`  The verb using the binding
/// - `.alternate`  The alternate slot, for that verb, using the binding
/// 
/// @param {Bool} forGamepad
/// @param {Enum.INPUT_VERB,Real} verbIndexA
/// @param {Any} binding
/// @param {Real} [playerIndex=0]
function InputBindingVGFind(_forGamepad, _verbIndexA, _binding, _playerIndex = 0){
    static _playerArray = __InputSystemPlayerArray();
    
    static _verbCount   = array_length(__InputVerbGroupsSystem()._verbToGroupDict);
    
    
    static _array = [];
    array_resize(_array, 0);
    
    __INPUT_VALIDATE_PLAYER_INDEX
    
    with(_playerArray[_playerIndex])
    {
        var _bindingArray = _forGamepad? __gamepadBindingArray : __kbmBindingArray;
        
        var _verbIndexB = 0;
        repeat(_verbCount)
        {
            var _alternateArray = _bindingArray[_verbIndexB];
            var _alternate = 0;
            
            if(InputVerbGetGroup(_verbIndexB) == undefined or
               InputVerbGetGroup(_verbIndexB) == InputVerbGetGroup(_verbIndexA))
            {
            repeat(array_length(_alternateArray))
                {
                    if (_alternateArray[_alternate] == _binding)
                    {
                        array_push(_array, {
                            verbIndex: _verbIndexB,
                            alternate: _alternate,
                        });
                    }
                
                    ++_alternate;
                }
            }
            
            ++_verbIndexB;
        }
    }
    
    return _array;
}