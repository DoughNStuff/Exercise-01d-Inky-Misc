/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 * Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = 0 //  0 Morning, 1 Noon, 2 Night

VAR tide = 0 // 0 low tide, 1 normal tide, 2 high tide


-> seashore

== seashore ==
You are sitting on the beach. 

It is { advance_time()}
It is {advance_tide()}

+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach.

It is { advance_time() }
It is {advance_tide() }
* {time==1} [Pick up some seashells] -> shells

+ [Stroll back up the beach] -> seashore
+ [Go to the water] -> water

== shells ==
You pick up the shells
-> beach2

== water ==
You are standing at the oceans edge

It is { advance_time()}
It is {advance_tide()}
+[Go back] -> beach2
* {time==0} [Pick up moving shell] -> crab
->DONE

== crab ==
It was a crab, yeowch
*[Go back] -> beach2
->DONE


== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    /*
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    */
    
        
    ~ return time
    
    == function advance_tide ==
    
    ~ tide = tide + 1
    
    {
       - tide > 2:
          ~ tide = 0
    }
    /*
    {- tide == 0:
    low tide
    
    - tide == 1:
    normal tide
    
    -tide == 2:
    high tide}
    */
    ~ return tide
