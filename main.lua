console.print("Hello, world!");

console.print("-----------------");

local a = vector3();
local b = vector3(100, 200, 300);

console.print(a);
console.print(b);

console.print("-----------------");

console.print(a + b);
console.print(a - b);
console.print(a * 5);
console.print(a / 5);

console.print("-----------------");

console.print(engine.get_max_clients());

local cvar = engine.get_convar("sv_cheats");

if (cvar) then
  console.print(cvar:get_int());
end
