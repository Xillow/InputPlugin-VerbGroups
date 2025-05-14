// Feather disable all

/// Returns the verb group for a verb.
/// 
/// @param {Enum.INPUT_VERB,Real} verbIndex

function InputVerbGetGroup(_verbIndex)
{
    static _system = __InputVerbGroupsSystem();
    static _verbToGroupDict = _system._verbToGroupDict;
    
    var _verbGroup = _verbToGroupDict[_verbIndex];
    return _verbGroup;
}