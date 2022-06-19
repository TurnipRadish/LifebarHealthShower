var commands = [];
var a = 1;

for (var a = 1; a <= 16; a++)
{
    t = a;
    t *= 100;
    t /= 16;

    commands.push(`execute if score #sh_health_temp var matches ${t} run data modify entity @s CustomName set value '[{"text":"|","color":"green"},{"text":"|||||||||||||||","color":"red"}]'`);
}

console.log(commands.join('\n'));
