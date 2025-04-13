# Functions (2D Checkers)

&nbsp;

The functions on this page allow you to check verbs by treating them as 2D vectors. This is helpful for situations where the player is controlling something in two dimensions, such as top-down movement or aiming. See [verb behaviour config macros](Config-Macros?id=verb-behavior) for additional details

&nbsp;

## …direction

`input_direction(default, verbLeft, verbRight, verbUp, verbDown, [playerIndex], [mostRecent])`

<!-- tabs:start -->

#### **Description**

**Returns:** Number, the direction (in degrees) represented by the sum of the verb values

|Name           |Datatype                  |Purpose                                                     |
|---------------|--------------------------|------------------------------------------------------------|
|`default`      |number                    |Value to return if none of the verbs are active             |
|`verbLeft`     |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim left |
|`verbRight`    |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim right|
|`verbUp`       |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim up   |
|`verbDown`     |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim down |
|`[playerIndex]`|integer                   |Player to target. If not specified, player 0 is used        |
|`[mostRecent]` |boolean                   |Whether to use the most recent input instead of returning 0 when two verbs conflict. `INPUT_DEFAULT_2D_MOST_RECENT` is used if unspecified|

#### **Examples**

```gml
//Set instance rotation to input direction, defaulting to the current value
image_angle = input_direction(image_angle, "left", "right", "up", "down");
```

```gml
//Add motion with most recent input direction for player 0 at current speed 
motion_add(input_direction(0, "left", "right", "up", "down", 0, true), speed);
```

<!-- tabs:end -->

&nbsp;

## …distance

`input_distance(verbLeft, verbRight, verbUp, verbDown, [playerIndex], [mostRecent])`

<!-- tabs:start -->

#### **Description**

**Returns:** Number, the length of the vector represented by the sum of the verb values

|Name           |Datatype                  |Purpose                                                     |
|---------------|--------------------------|------------------------------------------------------------|
|`verbLeft`     |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim left |
|`verbRight`    |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim right|
|`verbUp`       |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim up   |
|`verbDown`     |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim down |
|`[playerIndex]`|integer                   |Player to target. If not specified, player 0 is used        |
|`[mostRecent]` |boolean                   |Whether to use the most recent input instead of returning 0 when two verbs conflict. `INPUT_DEFAULT_2D_MOST_RECENT` is used if unspecified|

#### **Example**

```gml
//Add motion in an instance's current direction with input distance for speed 
motion_add(direction, input_distance("left", "right", "up", "down"));
```

<!-- tabs:end -->

&nbsp;

## …x

`input_x(verbLeft, verbRight, verbUp, verbDown, [playerIndex], [mostRecent])`

<!-- tabs:start -->

#### **Description**

**Returns:** Number, the x-coordinate of the vector represented by the sum of the verb values

|Name            |Datatype                  |Purpose                                                     |
|----------------|--------------------------|------------------------------------------------------------|
|`verbLeft`      |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim left |
|`verbRight`     |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim right|
|`verbUp`        |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim up   |
|`verbDown`      |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim down |
|`[playerIndex]` |integer                   |Player to target. If not specified, player 0 is used        |
|`[mostRecent ]` |boolean                   |Whether to use the most recent input instead of returning 0 when two verbs conflict. `INPUT_DEFAULT_2D_MOST_RECENT` is used if unspecified|

#### **Example**

```gml
//Move instance according to horizontal input 
x += input_x("left", "right", "up", "down");
```

<!-- tabs:end -->

&nbsp;

## …y

`input_y(verbLeft, verbRight, verbUp, verbDown, [playerIndex], [mostRecent])`

<!-- tabs:start -->

#### **Description**

**Returns:** Number, the y-coordinate of the vector represented by the sum of the verb values

|Name            |Datatype                  |Purpose                                                     |
|----------------|--------------------------|------------------------------------------------------------|
|`verbLeft`      |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim left |
|`verbRight`     |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim right|
|`verbUp`        |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim up   |
|`verbDown`      |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim down |
|`[playerIndex]` |integer                   |Player to target. If not specified, player 0 is used        |
|`[mostRecent]`  |boolean                   |Whether to use the most recent input instead of returning 0 when two verbs conflict. `INPUT_DEFAULT_2D_MOST_RECENT` is used if unspecified|

#### **Example**

```gml
//Move instance according to vertical input 
y += input_y("left", "right", "up", "down");
```

<!-- tabs:end -->

&nbsp;

## …xy

`input_xy(verbLeft, verbRight, verbUp, verbDown, [playerIndex], [mostRecent])`

<!-- tabs:start -->

#### **Description**

**Returns:** Struct, the vector represented by the sum of the verb values

|Name            |Datatype                  |Purpose                                                     |
|----------------|--------------------------|------------------------------------------------------------|
|`verbLeft`      |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim left |
|`verbRight`     |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim right|
|`verbUp`        |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim up   |
|`verbDown`      |[verb](Verbs-and-Bindings)|[Verb](Verbs-and-Bindings) that moves the point of aim down |
|`[playerIndex]` |integer                   |Player to target. If not specified, player 0 is used        |
|`[mostRecent]`  |boolean                   |Whether to use the most recent input instead of returning 0 when two verbs conflict. `INPUT_DEFAULT_2D_MOST_RECENT` is used if unspecified|

The struct returned by this function contains two member variables: `.x` and `.y`.

!> This function returns a `static` struct. Do not keep a permanent reference to this struct! It is liable to change value unexpectedly.

#### **Example**

```gml
//Move instance according to horizontal and vertical input 
var _movement = input_xy("left", "right", "up", "down");
x += _movement.x;
y += _movement.y;
```

<!-- tabs:end -->
