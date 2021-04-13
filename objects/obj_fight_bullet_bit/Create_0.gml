/// @description Insert description here
// You can write your code in this editor

rounds = obj_gc_fight_bit.rounds;

chex = irandom_range(rounds * -1, rounds);
chey = 12 + rounds;
changle = 10 + (2 * rounds);

chex_scale = 1;
chey_scale = 1 + 0.25 * rounds;

fade = false;