// Feather disable all
    
__InputVerbGroupsSystem();
function __InputVerbGroupsSystem()
{
						
    static _system = undefined;
    if(_system != undefined) return _system;
    
    _system = {};
    with(_system)
    {
        __verbToGroupDict = [];
        _verbArr = InputPlugInGetAllVerbs();
        for(i = 0; i < array_length(_verbArr); i++)
            {
				_verbToGroupDict[@ i] = undefined;
			}
    }
				
    return _system;
}


