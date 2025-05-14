// Feather disable all

/// Defines which verbs should collide with which other verbs when using InputBindingVGFind()
/// and InputBindingVGSetSafe. A verb that is not present in a group will collide with all other verbs
/// .
/// Only Call in __InputConfigVerbs() after all other functions

function __InputConfigVerbGroups(){
            enum INPUT_VERB_GROUP
            {
               //add your own verb groups here
               MENU,
               GAMEPLAY
            }
            
            //Define your verb groups here using the following function
            
            //InputDefineVerbGroup(INPUT_VERB_GROUP.VERBGROUPNAME, INPUT_VERB.VERBNAME1, INPUT_VERB.VERBNAME2, ...);
            //InputDefineVerbGroup(INPUT_VERB_GROUP.VERBGROUPNAME, INPUT_VERB.VERBNAME1, INPUT_VERB.VERBNAME2, ...);
    

}

