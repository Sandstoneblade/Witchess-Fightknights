void main(){
int pieceid = 1936;
cli_execute("cast frigidalmatian");
string backup = get_property("customCombatScript");
set_property("battleAction","custom combat script");
set_property("customCombatScript","witchess_copypaste.ccs");
visit_url("campground.php?action=witchess");
run_choice(1);
visit_url("choice.php?option=1&pwd=" + my_hash() + "&whichchoice=1182&piece="+pieceid, false);
run_combat();
set_property("battleAction","custom combat script");
set_property("customCombatScript","witchess_knight_bb.ccs");
visit_url("campground.php?action=witchess");
run_choice(1);
visit_url("choice.php?option=1&pwd=" + my_hash() + "&whichchoice=1182&piece="+pieceid, false);
run_combat();
cli_execute ("Use box full of monster");
cli_execute ("Use box full of monster");
cli_execute ("Use box full of monster");
cli_execute ("Use box full of monster");
set_property("battleAction","custom combat script");
set_property("customCombatScript","witchess knight.ccs");
cli_execute ("Use box full of monster");
int fightcount = 3;
while (fightcount > 0)
{
visit_url("campground.php?action=witchess");
run_choice(1);
visit_url("choice.php?option=1&pwd=" + my_hash() + "&whichchoice=1182&piece="+pieceid, false);
run_combat();
fightcount = fightcount - 1;
}
set_property("battleAction","custom combat script");
set_property("customCombatScript",backup);
}