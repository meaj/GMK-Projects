if(vspeed>0&&bbox_bottom < argument0.bbox_bottom)
{
    entered_new_state=true;
    grounded=true;
    state_id = state_jump;
    with(argument0)
    {
            score+=point_value;
            instance_destroy();
    }
}
else
{
    scr_damage_player(argument0,argument0.damage,true);
}
