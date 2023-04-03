local blacklist = {
    "v4.",
    "ident",
    "whatismyip",
    "whatsmyip",
    "ipify",
    "grabify"
}

local request = request or http and http.request or fluxus and fluxus.request or syn and syn.request or http_request
local hookfunction = hookfunction or hook_function
local newcclosure = new_cclosure or new_c_closure or newcclosure

-- request hooking;
do
   local old;
   hookfunction(request, newcclosure(function(table)
        local method = table and table.Method or table.method or table.METHOD
        local url = table and table.Url or table.url or table.URL
        for i, v in pairs(blacklist) do
           if url:lower():find(v) then
              return {Body = "_GET REKT_ **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]****[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]****[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]****[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]****[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]**"}
           end
        end
		return old(table)
   end))
end

-- httpget hooking;
do
   local old;
   hookfunction(game.HttpGetAsync, newcclosure(function(a, b)
        for i, v in pairs(blacklist) do
           if b:lower():find(v) then
              return {Body = "_GET REKT_ **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]****[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]****[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]****[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]****[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]**"}
           end
        end
		return old(b)
   end))
   hookfunction(game.HttpGet, newcclosure(function(a, b)
        for i, v in pairs(blacklist) do
           if b:lower():find(v) then
              return {Body = "_GET REKT_ **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]****[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]****[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]****[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]****[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]**"}
           end
        end
		return old(b)
   end))
end
