// feather disable all

/// Defines the Verb Group and all verbs that are in it.

/// @param {Enum.INPUT_VERB_GROUP,Real} verbGroup
/// @param {Enum.INPUT_VERB,Real} argument1_onwards

function InputDefineVerbGroup(_verbGroup){
    		
            static _system = __InputVerbGroupsSystem();
			static _verbToGroupDict = _system._verbToGroupDict;

			for(i = 1; i < argument_count; i++)
				{
				if(_verbToGroupDict[@ argument[i]] != undefined)
					InputPlugInError("A listed verb already has a group!");
				 _verbToGroupDict[@ argument[i]] = _verbGroup;
                }

}