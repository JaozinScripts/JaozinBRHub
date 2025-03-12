--feito por icefrOsty (apague)
-- nome colorido de viado (apague)

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        task.wait(1) -- Pequeno delay para garantir que o personagem funcione kkj carregue

        local head = character:FindFirstChild("Head")
        if not head then return end
        
        -- Criando BillboardGui para exibir o nome colorido
        local billboard = Instance.new("BillboardGui")
        billboard.Name = "ColoredNameTag"
        billboard.Size = UDim2.new(4, 0, 1, 0)
        billboard.StudsOffset = Vector3.new(0, 3, 0)
        billboard.Adornee = head
        billboard.Parent = head
        billboard.AlwaysOnTop = true -- Sempre visível para todos

        -- Criando o TextLabel para o nome de viado
        local textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.Text = player.Name
        textLabel.Font = Enum.Font.FredokaOne
        textLabel.TextScaled = true
        textLabel.TextStrokeTransparency = 0 -- Borda no texto para melhor visualização
        textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0) -- Borda preta
        textLabel.Parent = billboard

        -- Lista de cores para o efeito de mudança rs
        local colors = {
            Color3.fromRGB(255, 0, 0),   -- Vermelho
            Color3.fromRGB(255, 165, 0), -- Laranja
            Color3.fromRGB(255, 255, 0), -- Amarelo
            Color3.fromRGB(0, 255, 0),   -- Verde
            Color3.fromRGB(0, 0, 255),   -- Azul
            Color3.fromRGB(75, 0, 130),  -- Roxo
            Color3.fromRGB(148, 0, 211)  -- Violeta
        }

        -- Criando efeito de troca de cores
        task.spawn(function()
            local index = 1
            while textLabel.Parent do
                textLabel.TextColor3 = colors[index]
                index = index % #colors + 1 -- Loop nas cores
                task.wait(0.5) -- Tempo de troca (ajuste do teu jeito jao)
            end
        end)
    end)
end)