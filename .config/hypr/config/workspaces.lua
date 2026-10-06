-- DP-1
for i = 1, 5 do -- 1, 4
    hl.workspace_rule({
        workspace = i,
        monitor = "DP-1",
        persistent = true,
    })
end

-- DP-3
for i = 6, 10 do -- 5, 8
    hl.workspace_rule({
        workspace = i,
        monitor = "DP-3",
        persistent = true,
    })
end