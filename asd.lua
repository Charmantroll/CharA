local TokensXD = {
	'109cf2c70ec595f9ae4a2311861ba3c78bd3b494',
	'22e9f41158778d1a5894a76dc0614184f0e829f5',
	'07bc2c64b615e97a2fa76950e37aaec56cdb9e29'
}

local Token = TokensXD[math.random(1,#TokensXD)] --Aqui pon tu token

local MisAlts = {
	'AudioMakerProuwU',
	'DecalProUwu',
	'WazaInsanuwu',
	'agofboy',
	'PerreoLandHolder',
	'SimSimi_BotTest',
	'JhonyTheDeamon666',
	'Peigoap',
	'2341RWSF2',
	'Jjsjdsda',
	'fasfaseqsad',
	'wqar3q4sw',
	'Ajunigiua',
	'Jijosumae',
	'Tremendinolsi,
	'WhenASuwea',
	'WhenIrakssd',
	'WhenJasdwqe',
	'WhenLol2321',
	'WhenUwasd',
	'Whenasjdqwdd',
	'esomieldin',
	'Esotilin'
}

if game:GetService("CoreGui"):FindFirstChild("CharacterAi") then
	game:GetService("CoreGui"):FindFirstChild("CharacterAi"):Destroy()
	print("Destruido")
end

local NuevoBindable = game:GetService("ReplicatedStorage"):WaitForChild('Sanpiterburgo')

--Conexiones--
local HistorialActual = {}

local CharacterAi = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Adorno = Instance.new("Frame")
local Personajes = Instance.new("ScrollingFrame")
local ImageLabel = Instance.new("ImageLabel")
local ChatActual = Instance.new("TextLabel")
local Buscador = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")

--Properties:

CharacterAi.Name = "CharacterAi"
CharacterAi.Parent = game:GetService("CoreGui")
CharacterAi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = CharacterAi
Frame.BackgroundColor3 = Color3.fromRGB(36, 37, 37)
Frame.Position = UDim2.new(0.196488291, 0, 0.169811308, 0)
Frame.Size = UDim2.new(0.606187284, 0, 0.658925951, 0)

Adorno.Name = "Adorno"
Adorno.Parent = Frame
Adorno.BackgroundColor3 = Color3.fromRGB(61, 62, 62)
Adorno.BorderSizePixel = 0
Adorno.Position = UDim2.new(0, 0, 0.100000001, 0)
Adorno.Size = UDim2.new(1, 0, 0.00499999989, 0)

Personajes.Name = "Personajes"
Personajes.Parent = Frame
Personajes.Active = true
Personajes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Personajes.BackgroundTransparency = 1.000
Personajes.BorderSizePixel = 0
Personajes.Position = UDim2.new(0.103, 0, 0.150000006, 0)
Personajes.Size = UDim2.new(0.884000003, 0, 0.800000012, 0)
Personajes.ScrollBarThickness = 0

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.0206896551, 0, 0.0198237896, 0)
ImageLabel.Size = UDim2.new(0.255172402, 0, 0.0660792962, 0)
--ImageLabel.Image = "rbxassetid://11697746345"
ImageLabel.ScaleType = Enum.ScaleType.Fit

ChatActual.Name = "ChatActual"
ChatActual.Parent = Frame
ChatActual.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChatActual.BackgroundTransparency = 1.000
ChatActual.Position = UDim2.new(0.724137902, 0, 0.953744531, 0)
ChatActual.Size = UDim2.new(0.275862068, 0, 0.0440528616, 0)
ChatActual.Font = Enum.Font.Gotham
ChatActual.TextColor3 = Color3.fromRGB(255, 255, 255)
ChatActual.TextScaled = true
ChatActual.TextSize = 14.000
ChatActual.TextWrapped = true

Buscador.Name = "Buscador"
Buscador.Parent = Frame
Buscador.BackgroundColor3 = Color3.fromRGB(36, 37, 37)
Buscador.Position = UDim2.new(0.275862068, 0, 0.0286343638, 0)
Buscador.Size = UDim2.new(0.637241364, 0, 0.0484581515, 0)

TextButton.Parent = Buscador
TextButton.BackgroundColor3 = Color3.fromRGB(36, 115, 174)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.850000024, 0, 0, 0)
TextButton.Size = UDim2.new(0.150000006, 0, 1, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Buscar"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextBox.Parent = Buscador
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.Size = UDim2.new(0.850000024, 0, 1, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Busca personajes"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 16.000
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left

function DividirTexto(Texto)
    local Dividido = string.split(Texto, " ")
    local Partes = {}
    local Contaodor = 1
    Partes[Contaodor] = {}
    
    for index, texto in pairs(Dividido) do
        local Tamano = #texto
        
        if (not Partes[Contaodor]['Tamano']) then
            Partes[Contaodor]['Tamano'] = 0
        end
        if (not Partes[Contaodor]['Texto']) then
            Partes[Contaodor]['Texto'] = {}
        end
        
        
        Partes[Contaodor]['Tamano'] = Partes[Contaodor]['Tamano'] + Tamano

        table.insert(Partes[Contaodor]['Texto'], texto)
        
        if Partes[Contaodor]['Tamano'] > 150 then
            Contaodor = Contaodor + 1
            Partes[Contaodor] = {}
        end
    end
    
    print('Succes uwu')
    
    return Partes
end

local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local UserInputService = game:GetService("UserInputService")

local Dragging
local DragInput
local DragStart
local StartPos

--Calculamos la distancia entre MacOs y Principal para que MacOs siempre este arriba de Principal--

local function update(input)

	local delta = input.Position - DragStart

	Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

Frame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		Dragging = true
		DragStart = input.Position
		startPos = Frame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				Dragging = false
			end
		end)
	end
end)

Frame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		DragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == DragInput and Dragging then
		update(input)
	end
end)



local CrearSamplePersonajes = function()
	local SamplePersonajes = Instance.new("Frame")
	local Titulo = Instance.new("TextLabel")
	local PCategoria = Instance.new("ScrollingFrame")

	--Properties:

	SamplePersonajes.Name = "SamplePersonajes"
	SamplePersonajes.Parent = nil
	SamplePersonajes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SamplePersonajes.BackgroundTransparency = 1.000
	SamplePersonajes.Size = UDim2.new(1, 0, 0, 200)

	Titulo.Name = "Titulo"
	Titulo.Parent = SamplePersonajes
	Titulo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Titulo.BackgroundTransparency = 1.000
	Titulo.Size = UDim2.new(1, 0, 0.100000001, 0)
	Titulo.Font = Enum.Font.GothamBold
	Titulo.Text = "Discover"
	Titulo.TextColor3 = Color3.fromRGB(198, 193, 184)
	Titulo.TextScaled = true
	Titulo.TextSize = 14.000
	Titulo.TextWrapped = true
	Titulo.TextXAlignment = Enum.TextXAlignment.Left

	PCategoria.Name = "PCategoria"
	PCategoria.Parent = SamplePersonajes
	PCategoria.Active = true
	PCategoria.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	PCategoria.BackgroundTransparency = 1.000
	PCategoria.Position = UDim2.new(0, 0, 0.150000006, 0)
	PCategoria.Size = UDim2.new(1, 0, 0.850000024, 0)
	PCategoria.CanvasSize = UDim2.new(10, 0, 0, 0)
	PCategoria.ScrollBarThickness = 6

	return SamplePersonajes
end

local CrearSamplePersonaje = function()
	local SamplePersonaje = Instance.new("ImageButton")
	local ImageLabel = Instance.new("ImageLabel")
	local UICorner = Instance.new("UICorner")
	local Creador = Instance.new("TextLabel")
	local Descripcion = Instance.new("TextLabel")
	local TextLabel = Instance.new("TextLabel")
	local Interacciones = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local ImageLabel_2 = Instance.new("ImageLabel")
	local Numero = Instance.new("TextLabel")

	--Properties:

	SamplePersonaje.Name = "SamplePersonaje"
	SamplePersonaje.Parent = nil
	SamplePersonaje.BackgroundColor3 = Color3.fromRGB(36, 37, 37)
	SamplePersonaje.Size = UDim2.new(0, 150, 1, 0)

	ImageLabel.Parent = SamplePersonaje
	ImageLabel.BackgroundColor3 = Color3.fromRGB(36, 37, 37)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.BorderColor3 = Color3.fromRGB(61, 62, 62)
	ImageLabel.BorderSizePixel = 4
	ImageLabel.Size = UDim2.new(1, 0, 0.699999988, 0)
	ImageLabel.Image = "http://www.roblox.com/asset/?id=8506788668"
	ImageLabel.ScaleType = Enum.ScaleType.Fit

	UICorner.Parent = ImageLabel

	Creador.Name = "Creador"
	Creador.Parent = SamplePersonaje
	Creador.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Creador.BackgroundTransparency = 1.000
	Creador.Position = UDim2.new(0, 0, 0.699999988, 0)
	Creador.Size = UDim2.new(1, 0, 0.0823529437, 0)
	Creador.Font = Enum.Font.Unknown
	Creador.Text = "@Amlo"
	Creador.TextColor3 = Color3.fromRGB(173, 170, 165)
	Creador.TextSize = 14.000
	Creador.TextWrapped = true
	Creador.TextXAlignment = Enum.TextXAlignment.Left

	Descripcion.Name = "Descripcion"
	Descripcion.Parent = SamplePersonaje
	Descripcion.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Descripcion.BackgroundTransparency = 1.000
	Descripcion.Position = UDim2.new(0, 0, 0.800000012, 0)
	Descripcion.Size = UDim2.new(1, 0, 0.200000003, 0)
	Descripcion.Font = Enum.Font.Unknown
	Descripcion.Text = "Descripcion insana"
	Descripcion.TextColor3 = Color3.fromRGB(255, 248, 237)
	Descripcion.TextSize = 14.000
	Descripcion.TextWrapped = true
	Descripcion.TextXAlignment = Enum.TextXAlignment.Left
	Descripcion.TextYAlignment = Enum.TextYAlignment.Top

	TextLabel.Parent = SamplePersonaje
	TextLabel.BackgroundColor3 = Color3.fromRGB(210, 208, 203)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.0466666669, 0, 0.52352941, 0)
	TextLabel.Size = UDim2.new(0.953333318, 0, 0.123529412, 0)
	TextLabel.Font = Enum.Font.SourceSansBold
	TextLabel.TextColor3 = Color3.fromRGB(210, 208, 203)
	TextLabel.TextSize = 20.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	Interacciones.Name = "Interacciones"
	Interacciones.Parent = SamplePersonaje
	Interacciones.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Interacciones.BackgroundTransparency = 0.500
	Interacciones.Position = UDim2.new(0.613333344, 0, 0, 0)
	Interacciones.Size = UDim2.new(0.386666656, 0, 0.100000001, 0)

	UICorner_2.Parent = Interacciones

	ImageLabel_2.Parent = Interacciones
	ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel_2.BackgroundTransparency = 1.000
	ImageLabel_2.Position = UDim2.new(0.0500000007, 0, 0.100000001, 0)
	ImageLabel_2.Size = UDim2.new(0.300000012, 0, 0.800000012, 0)
	ImageLabel_2.Image = "rbxassetid://11697714569"

	Numero.Name = "Numero"
	Numero.Parent = Interacciones
	Numero.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Numero.BackgroundTransparency = 1.000
	Numero.Position = UDim2.new(0.400000006, 0, 0.0500000007, 0)
	Numero.Size = UDim2.new(0.5, 0, 0.800000012, 0)
	Numero.Font = Enum.Font.SourceSansBold
	Numero.Text = "1.6k"
	Numero.TextColor3 = Color3.fromRGB(255, 255, 255)
	Numero.TextSize = 14.000
	Numero.TextWrapped = true

	return SamplePersonaje
end

-- Scripts:


local FolderPath = "CharacterAi/"
local Http = game:GetService("HttpService")

local function SetIcon(url, fileName)

	fileName = fileName:gsub("%p", "");
	local Image

	if isfile(FolderPath .. fileName .. ".png") then
		Image = getsynasset(FolderPath .. fileName .. ".png") 
	else writefile(FolderPath .. fileName .. ".png", game:HttpGet(url));
		Image = getsynasset(FolderPath.. fileName .. ".png")
	end 

	return Image
end

local loguituwu = SetIcon("https://beta.character.ai/static/media/logo-dark.77b3a5cc8e42a91f021f.png", "LogoPrincipal412")
ImageLabel.Image = loguituwu

local Reiniciar = function(ExternalId)
	local url = "https://beta.character.ai/chat/history/create/"
	local Info
	local Contador = 0

	while task.wait(0.5) do
		local succ, err = pcall(function()
			Info = syn.request({
				Url = url,
				Method = "POST",
				Headers = {
					["authorization"] = "Token "..Token,
					["content-type"] = "application/json"
				},
				Body = Http:JSONEncode({
					character_external_id = tostring(ExternalId),
					override_history_set = nil
				})
			})

			return Http:JSONDecode(Info.Body)
		end)

		Contador = Contador + 1

		if Contador >= 20 then
			warn('Ocurrio un error al reiniciar')
			break
		end

		if succ == true then
			return err
		else
			print(err, '332')
		end
	end
end


local Responder = function(Pregunta, hISTORIAL,Character, internal)
	local Info

	local Limpiar = function(Respuesta)
		local UltimaTabla = Respuesta:match("%b{}")
		for Tabla in Respuesta:gmatch("%b{}") do
			UltimaTabla = Tabla
		end
		--print(UltimaTabla)
		local UltimaTabla = Http:JSONDecode(UltimaTabla)
		--print(Http:JSONEncode(UltimaTabla))
		local Respuesta = UltimaTabla.replies[1].text
		return Respuesta
	end

	print('Historial:', hISTORIAL, 'Character:', Character, 'Internal:', internal, 'Pregunta:', Pregunta)
	local Contador = 0
	local Respuesta
	while Respuesta == nil do
		local succ, err = pcall(function()
			local Wasa = syn.request({
				Url = "https://beta.character.ai/chat/streaming/",
				Method = "POST",
				Headers = {
					["authorization"] = "Token "..Token,
					["content-type"] = "application/json",
				},
				Body = Http:JSONEncode({
					history_external_id = hISTORIAL,
					character_external_id = Character,
					text = Pregunta,
					tgt = internal,
					chunks_to_pad = 8,
					stream_every_n_steps = 16,
					ranking_method = "random",
					is_proactive = false,
					faux_chat = false,
					enable_tti = true,
					staging = false
				})
			})

			return Limpiar(Wasa.Body)
		end)

		Contador = Contador + 1
		if Contador >= 20 then
			warn('Ocurrio un error al responder')
			break
		end


		if succ == true then
		    Respuesta = err
		    break
		end
	    task.wait(1)
	    print('Reintentando')
	end
	
	return Respuesta
end

local ObtenerCharactersRecientes = function()
	local url = "https://beta.character.ai/chat/characters/recent/"
	local Charactersgod

	local succ, err = pcall(function()
		local info = syn.request({
			Url = url,
			Method = "GET",
			Headers = {
				["authorization"] = "Token "..Token,
				["content-type"] = "application/json"
			}
		})
		Charactersgod = Http:JSONDecode(info.Body)
	end)

	if succ == true then
		return Charactersgod
	end

	print(err, '405')
	return {}
end

local ObtenerMisCharacters = function()
	local url = "https://beta.character.ai/chat/characters/?scope=user"
	local Charactersgod

	while task.wait(5) do
		local succ, err = pcall(function()
			local info = syn.request({
				Url = url,
				Method = "GET",
				Headers = {
					["authorization"] = "Token "..Token,
					["content-type"] = "application/json"
				}
			})
			return Http:JSONDecode(info.Body)
		end)

		print('Reintentando')

		if succ == true then
			print('Characters obtenidos', err)
			return err
		end
	end

	--print(err, '429')
	--return {}
end


local ObtenerCharacters = function()
	local urlgod = "https://beta.character.ai/chat/categories/characters/"
	local uwu

	while uwu == nil do
	    task.wait(5)
		print('Reintentando obtenerChars')
		local succ, err = pcall(function()
			print("a")
			local Info = syn.request({
				Url = urlgod,
				Method = "GET",
				Headers = {
					["authorization"] = "Token "..Token,
					["content-type"] = "application/json"
				}
			})
			return Http:JSONDecode(Info.Body)
		end)
		if succ == true then
		uwu = err
		end
	end
	
	print(uwu)
	--local Recientes = ObtenerCharactersRecientes()
	local MisChar = ObtenerMisCharacters()

	--uwu["characters_by_category"]["Recientes"] = Recientes["characters"]
	uwu["characters_by_category"]["#Mis Personajes"] = MisChar["characters"]
	return uwu
end




local Http = game:GetService("HttpService")

local Characters

Characters = ObtenerCharacters()

local function RedondearNumero(numero)
	local numero_final = ""
	local numero = tonumber(numero)

	if numero >= 1000000 then
		numero_final = tostring(math.floor(numero/1000000)).."m"
	elseif numero >= 1000 then
		numero_final = tostring(math.floor(numero/1000)).."k"
	else
		numero_final = tostring(numero)
	end

	return numero_final
end


local function LimpiarScroll()
	for i,v in pairs(Personajes:GetChildren()) do
		if v then
			v:Destroy()
		end
	end

	Personajes.CanvasSize = UDim2.new(0,0,0,0)
end

local function ActualizarPersonajes(characters, buscador)
	LimpiarScroll()

	local TablaIterar = characters["characters_by_category"]

	if buscador then
		local Encoded = Http:UrlEncode(buscador)
		local url = "https://beta.character.ai/chat/characters/search/?query="..Encoded

		local succ ,err = pcall(function()

			local infouwu = syn.request({
				Url = url,
				Method = "GET",
				Headers = {
					["authorization"] = "Token "..Token,
					["content-type"] = "application/json"
				}
			})
			print(infouwu.Body)
			local EncodedJSon = Http:JSONDecode(infouwu.Body)
			TablaIterar = EncodedJSon["characters"]
		end)

		if succ == false then
			print(err, '512')
		end

	end

	if buscador == nil then
		for nombreC,categoria in pairs(TablaIterar) do
			local ClonPersonajes = CrearSamplePersonajes()
			local ScrollCategoria = ClonPersonajes.PCategoria
			ClonPersonajes.Titulo.Text = nombreC

			ClonPersonajes.Parent = Personajes
			ClonPersonajes.Position = UDim2.new(0,0,0,Personajes.CanvasSize.Y.Offset)
			Personajes.CanvasSize = UDim2.new(0,0,0,Personajes.CanvasSize.Y.Offset + 210)

			for _, personaje in pairs(categoria) do
				local ClonPersonaje = CrearSamplePersonaje()
				ClonPersonaje.Creador.Text = "@"..personaje["user__username"]
				ClonPersonaje.Descripcion.Text = personaje["title"]

				if personaje["avatar_file_name"] ~=	nil and personaje["avatar_file_name"] ~= "" then
					local urlGenerado = "https://characterai.io/i/400/static/avatars/"..personaje["avatar_file_name"]
					ClonPersonaje.ImageLabel.Image = SetIcon(urlGenerado, personaje["avatar_file_name"])
				end

				if personaje["img_gen_enabled"] == true then
					ClonPersonaje.TextLabel.Text = "🎨"
				else
					ClonPersonaje.TextLabel.Text = ""   
				end

				ClonPersonaje.TextLabel.Text = ClonPersonaje.TextLabel.Text.. personaje["participant__name"]
				ClonPersonaje.Interacciones.Numero.Text = RedondearNumero(personaje["participant__num_interactions"])
				ClonPersonaje.Parent = ScrollCategoria
				ClonPersonaje.Position = UDim2.new(0, ScrollCategoria.CanvasSize.X.Offset, 0, 0)

				ScrollCategoria.CanvasSize = UDim2.new(0, ScrollCategoria.CanvasSize.X.Offset + 160, 0, 0)

				ClonPersonaje.MouseButton1Click:Connect(function()
					local Extern = personaje["external_id"]
					local NuevoHistorial = Reiniciar(Extern)
					HistorialActual["ExID"] = Extern
					HistorialActual["Historial"] = NuevoHistorial

					ChatActual.Text = "Actual: ".. personaje["participant__name"]
				end)
			end
		end
	else
		local ClonPersonajes = CrearSamplePersonajes()
		local ScrollCategoria = ClonPersonajes.PCategoria
		ClonPersonajes.Titulo.Text = "Resultados:"
		ClonPersonajes.Parent = Personajes
		for _, personaje in pairs(TablaIterar) do
			local ClonPersonaje = CrearSamplePersonaje()
			ClonPersonaje.Creador.Text = "@"..personaje["user__username"]
			ClonPersonaje.Descripcion.Text = personaje["title"]

			if personaje["avatar_file_name"] ~=	nil and personaje["avatar_file_name"] ~= "" then
				local urlGenerado = "https://characterai.io/i/400/static/avatars/"..personaje["avatar_file_name"]
				ClonPersonaje.ImageLabel.Image = SetIcon(urlGenerado, personaje["avatar_file_name"])
			end

			if personaje["img_gen_enabled"] == true then
				ClonPersonaje.TextLabel.Text = "🎨"
			else
				ClonPersonaje.TextLabel.Text = ""   
			end

			ClonPersonaje.TextLabel.Text = ClonPersonaje.TextLabel.Text.. personaje["participant__name"]
			ClonPersonaje.Interacciones.Numero.Text = RedondearNumero(personaje["participant__num_interactions"])
			ClonPersonaje.Parent = ScrollCategoria
			ClonPersonaje.Position = UDim2.new(0, ScrollCategoria.CanvasSize.X.Offset, 0, 0)

			ScrollCategoria.CanvasSize = UDim2.new(0, ScrollCategoria.CanvasSize.X.Offset + 160, 0, 0)

			ClonPersonaje.MouseButton1Click:Connect(function()
				local Extern = personaje["external_id"]
				local NuevoHistorial = Reiniciar(Extern)
				HistorialActual["ExID"] = Extern
				HistorialActual["Historial"] = NuevoHistorial

				ChatActual.Text = "Actual: ".. personaje["participant__name"]
			end)
		end
	end
end

ActualizarPersonajes(Characters)

TextBox.FocusLost:Connect(function()
	if TextBox.Text == "" then
		ActualizarPersonajes(Characters)
	else
		ActualizarPersonajes(Characters, TextBox.Text)
	end
end)

TextButton.MouseButton1Click:Connect(function()
	if TextBox.Text ~= "" then
		ActualizarPersonajes(Characters, TextBox.Text)
	end
end)

local Debounce = false
local AnteriorSeleccionado

local EnAdd = function(Char)
    if Char == game.Players.LocalPlayer.Character then
        return
    end
    pcall(function()
    
	local Root = Char:FindFirstChild("HumanoidRootPart")
	
	if (not Root) then
		return
	end
	
	Root.Size = Vector3.new(4,4,4)
	Root.Transparency = 0.9
	if Root then
		local Click = Instance.new("ClickDetector")
		Click.Parent = Root

		Click.MouseClick:Connect(function()

			if AnteriorSeleccionado == Char then
				if Char.Head:FindFirstChild("Highlight") then
					Char.Head.Highlight:Destroy()
				end
				AnteriorSeleccionado = nil
				--print("Nileado")
				return
			end

			if AnteriorSeleccionado ~= nil then
				if AnteriorSeleccionado.Head:FindFirstChild("Highlight") then
					AnteriorSeleccionado.Head.Highlight:Destroy()
				end
				--print("Target")
			end



			AnteriorSeleccionado = Char
			local High = Instance.new("Highlight")
			High.Name = "Highlight"
			High.FillColor = Color3.new(255, 255, 127)
			High.FillTransparency = 0.5
			High.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop


			High.Parent = Char.Head

		end)
	end
			end)
end

game.Players.PlayerAdded:Connect(function(jugador)
	jugador.CharacterAdded:Connect(function(Char)
		EnAdd(Char)
	end)
end)

for i,v in pairs(game.Players:GetChildren()) do
	EnAdd(v.Character)

	v.CharacterAdded:Connect(function(chargod)
		EnAdd(chargod)
	end)
end

local Players = game:GetService("Players")
function EncontrarJugador(nombre)
   local Cercano = ''

    for i,v in pairs(Players:GetChildren()) do
        if v.Name:lower():sub(1, #nombre) == nombre:lower() then
            return v
        end
    end

	for i,v in pairs(Players:GetChildren()) do
        if v.DisplayName:lower():sub(1, #nombre) == nombre:lower() then
            return v
        end
    end

    return false
end

NuevoBindable.Event:Connect(function(jugadorElegido)
		local Jugagod = jugadorElegido
		if Jugagod == false then
			return
		end
		
		local Char = Jugagod.Character

			if AnteriorSeleccionado == Char then
				if Char.Head:FindFirstChild("Highlight") then
					Char.Head.Highlight:Destroy()
				end
				AnteriorSeleccionado = nil
				--print("Nileado")
				return
			end

			if AnteriorSeleccionado ~= nil then
				if AnteriorSeleccionado.Head:FindFirstChild("Highlight") then
					AnteriorSeleccionado.Head.Highlight:Destroy()
				end
				--print("Target")
			end



			AnteriorSeleccionado = Char
			local High = Instance.new("Highlight")
			High.Name = "Highlight"
			High.FillColor = Color3.new(255, 255, 127)
			High.FillTransparency = 0.5
			High.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop


			High.Parent = Char.Head
end)

game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(messageData) 
	local jugador = game.Players[messageData.FromSpeaker]
	local mensaje = messageData.Message

	if jugador.Name == 'ElGuapoDeHuapos' then
		if mensaje == "!r" then
			if HistorialActual["ExID"] then
					local Extern = HistorialActual["ExID"]
					local NuevoHistorial = Reiniciar(Extern)
					HistorialActual["ExID"] = Extern
					HistorialActual["Historial"] = NuevoHistorial
				--local NuevoHistorial = Reiniciar(HistorialActual["ExID"])
				--HistorialActual["ExID"] = NuevoHistorial
			end
		end

	    if mensaje:sub(1,7) == 'sigue a' then
		

		end
		
	end

	if table.find(MisAlts, jugador.Name) then
		return
	end

	local mag = (jugador.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
	if mag < 7 and jugador ~= game.Players.LocalPlayer and AnteriorSeleccionado == nil then
		if HistorialActual["ExID"] then
			print(mensaje)
			local UserGodName = HistorialActual["Historial"]["participants"][2]["user"]["username"]
			if UserGodName:sub(1,8) ~= 'internal' then
				UserGodName = HistorialActual["Historial"]["participants"][1]["user"]["username"]
			end

			local respuesta = Responder(jugador.DisplayName..': '.. mensaje, HistorialActual["Historial"]["external_id"], HistorialActual["ExID"], UserGodName)
			respuesta = respuesta:gsub("%s+", " ")
			local Dividio = DividirTexto(respuesta)
			
            for i, parte in pairs(Dividio) do
                local Entonces = table.concat(parte['Texto'], " ")
                print(Entonces)
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Entonces, "All")
                task.wait(4)
            end
		    

			--print(respuesta)
			--game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(respuesta:sub(1, 199), "All")

		end
	elseif AnteriorSeleccionado ~= nil then
		if HistorialActual["ExID"] and jugador == game.Players:GetPlayerFromCharacter(AnteriorSeleccionado) then
			print(mensaje.." privado")
			if not HistorialActual["Historial"]["participants"] or nil then
				print('No hay participantes')
				return
			end
			local UserGodName = HistorialActual["Historial"]["participants"][2]["user"]["username"]
			if UserGodName:sub(1,8) ~= 'internal' then
				UserGodName = HistorialActual["Historial"]["participants"][1]["user"]["username"]
			end
			local respuesta = Responder(jugador.DisplayName..': '..mensaje, HistorialActual["Historial"]["external_id"], HistorialActual["ExID"], UserGodName)

			if typeof(respuesta) ~= 'string' and #respuesta == 0 then
				return
			end

			respuesta = respuesta:gsub("%s+", " ")
			local Dividio = DividirTexto(respuesta)
			
            for i, parte in pairs(Dividio) do
                local Entonces = table.concat(parte['Texto'], " ")
                print(Entonces)
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Entonces, "All")
                task.wait(4)
            end
            
			--print(respuesta)
			--game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(respuesta:sub(1, 199), "All")

		end
	end
end)

local Extern = 'UzAhrZTkr6rB5b1saTP3EVMLRP9u_TQcTzlTmjMqDBo'
local NuevoHistorial = Reiniciar(Extern)
HistorialActual["ExID"] = Extern
HistorialActual["Historial"] = NuevoHistorial

ChatActual.Text = "Actual: ".. 'XD defaul'
