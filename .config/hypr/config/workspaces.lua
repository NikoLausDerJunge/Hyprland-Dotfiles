-- DP-1
for i = 1, 4 do
    hl.workspace_rule({
        workspace = i,
        monitor = "DP-1",
        persistent = true,
    })
end

-- DP-3
for i = 5, 8 do
    hl.workspace_rule({
        workspace = i,
        monitor = "DP-3",
        persistent = true,
    })
end