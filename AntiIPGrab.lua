get_function = function(func: string)
    local env = getfenv()
    if syn then
        if func == "request" then
            return syn.request
        end
    end
    if env.request or env.http_request or fluxus and fluxus.request or http and http.request and func == "request" then
        return(env.request or env.http_request or fluxus and fluxus.request or http and http.request or request)
    end
    if func == "hookfunction" then 
        if env.hookfunction or env.hook_function or hookfunction or hook_function then
            return(env.hookfunction or env.hook_function or hookfunction or hook_function or function(a,b)
                a = b
            end)
        end
    end
end
local blacklist = {
    "v4.",
    "ident",
    "whatismyip",
    "whatsmyip",
    "ipify",
    "grabify
}
local request = get_function("request")
local hookfunction = get_function("hookfunction")

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
   end))

-- httpget hooking;
do
   local old;
   hookfunction(game.HttpGetAsync, newcclosure(function(url)
        for i, v in pairs(blacklist) do
           if url:lower():find(v) then
              return {Body = "_GET REKT_ **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]****[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]****[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]****[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]****[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]** **[IMAGINE IP GRABBING XD]**"}
           end
        end
   end))
end
