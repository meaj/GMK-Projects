score += argument0.points_earned;
lives += argument0.lives_earned;
if(argument0.health_earned > 0)
{
    alarm[0] = max(alarm[0], 2* room_speed);
    health += min(100, health+argument0.health_earned);
}

with(argument0)
{
    instance_destroy();
}
