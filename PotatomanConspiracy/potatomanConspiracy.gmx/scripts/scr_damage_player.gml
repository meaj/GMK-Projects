//arg0 object collieded with
//arg1 health to be subtracted
//arg2 should the player react

if(can_damage && argument0.visible)
{
    entered_new_state = true;
    grounded = false;
    state_id = state_jump;
    
    if(vspeed >= 0)
    {
        vspeed = -5;
    }
    else
    {
        vspeed = 5;
    }
    
    if(argument2)
    {
        hspeed = sign(x - argument0.x)*10;
    }
    else
    {
        hspeed *=1;
    }
    
    can_damage = false;
    image_alpha = 0.75;
    alarm[0]= room_speed*3;
    health -= argument1;
    if(health <= 0)
    {
        state_id = state_death;
        entered_new_state = true;
    }
}
