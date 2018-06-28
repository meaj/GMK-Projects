/// Tests for collision
//arg 0 the platform collided with

if(argument0.solid && !place_free(x+hspeed, y+1))
{
    x-=hspeed;
}

if(place_meeting(x+hspeed, y+vspeed, argument0))
{
    if(vspeed > 0 && y- vspeed < argument0.y + step_threshold && current_platform != argument0.id)
    {
        vspeed = 0;
        gravity = 0;
        
        state_id = state_idle;
        jump_count = 0;
        grounded = true;
        current_platform = argument0.id;
    }
    else if(argument0.solid)
    {
        y-= vspeed;
        vspeed = 0;
    }
}
