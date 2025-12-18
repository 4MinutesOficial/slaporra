local a=game:GetService("TweenService")
local b=game:GetService("UserInputService")
local c=game:GetService("Players")

local d={}
d.__index=d

local e={
    f=Color3.fromRGB(25,25,35),
    g=Color3.fromRGB(88,101,242),
    h=Color3.fromRGB(35,35,45),
    i=Color3.fromRGB(255,255,255),
    j=Color3.fromRGB(180,180,190),
    k=Color3.fromRGB(67,181,129),
    l=Color3.fromRGB(240,71,71),
    m=Color3.fromRGB(250,166,26),
    n=Enum.Font.GothamBold,
    o=Enum.Font.Gotham,
    p=UDim.new(0,8),
    q=12,
    r=0.3,
    s=Enum.EasingStyle.Quad,
}

local function t(u,v,w)
    local x=a:Create(u,v,w)
    x:Play()
    return x
end

local function y()
    return b.TouchEnabled and not b.KeyboardEnabled
end

local function z(A,B)
    local C=false
    local D,E,F
    
    B.InputBegan:Connect(function(G)
        if G.UserInputType==Enum.UserInputType.MouseButton1 or G.UserInputType==Enum.UserInputType.Touch then
            C=true
            E=G.Position
            F=A.Position
            
            G.Changed:Connect(function()
                if G.UserInputState==Enum.UserInputState.End then
                    C=false
                end
            end)
        end
    end)
    
    B.InputChanged:Connect(function(G)
        if G.UserInputType==Enum.UserInputType.MouseMovement or G.UserInputType==Enum.UserInputType.Touch then
            D=G
        end
    end)
    
    b.InputChanged:Connect(function(G)
        if G==D and C then
            local H=G.Position-E
            local I=UDim2.new(F.X.Scale,F.X.Offset+H.X,F.Y.Scale,F.Y.Offset+H.Y)
            t(A,TweenInfo.new(0.1,Enum.EasingStyle.Linear),{Position=I})
        end
    end)
end

function d:CreateWindow(J)
    local K={
        L={},
        M=nil,
        N=false,
    }
    
    J=J or{}
    local O=J.Title or "H4 Library"
    local P=J.Subtitle or "v1.0.0"
    local Q=J.Size or UDim2.new(0,y()and 380 or 550,0,y()and 500 or 600)
    
    local R=Instance.new("ScreenGui")
    R.Name="H4Library"
    R.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
    R.ResetOnSpawn=false
    R.Parent=game.CoreGui
    
    local S=Instance.new("Frame")
    S.Name="Main"
    S.Size=Q
    S.Position=UDim2.new(0.5,0,0.5,0)
    S.AnchorPoint=Vector2.new(0.5,0.5)
    S.BackgroundColor3=e.f
    S.BorderSizePixel=0
    S.ClipsDescendants=true
    S.Parent=R
    
    local T=Instance.new("UICorner")
    T.CornerRadius=e.p
    T.Parent=S
    
    local U=Instance.new("ImageLabel")
    U.Name="Shadow"
    U.Size=UDim2.new(1,30,1,30)
    U.Position=UDim2.new(0,-15,0,-15)
    U.BackgroundTransparency=1
    U.Image="rbxasset://textures/ui/GuiImagePlaceholder.png"
    U.ImageColor3=Color3.fromRGB(0,0,0)
    U.ImageTransparency=0.7
    U.ScaleType=Enum.ScaleType.Slice
    U.SliceCenter=Rect.new(10,10,118,118)
    U.ZIndex=0
    U.Parent=S
    
    local V=Instance.new("Frame")
    V.Name="Header"
    V.Size=UDim2.new(1,0,0,50)
    V.BackgroundColor3=e.h
    V.BorderSizePixel=0
    V.Parent=S
    
    local W=Instance.new("UICorner")
    W.CornerRadius=e.p
    W.Parent=V
    
    local X=Instance.new("Frame")
    X.Size=UDim2.new(1,0,0,8)
    X.Position=UDim2.new(0,0,1,-8)
    X.BackgroundColor3=e.h
    X.BorderSizePixel=0
    X.Parent=V
    
    local Y=Instance.new("Frame")
    Y.Name="Accent"
    Y.Size=UDim2.new(1,0,0,2)
    Y.Position=UDim2.new(0,0,1,0)
    Y.BackgroundColor3=e.g
    Y.BorderSizePixel=0
    Y.Parent=V
    
    local Z=Instance.new("TextLabel")
    Z.Name="Title"
    Z.Size=UDim2.new(0,200,1,0)
    Z.Position=UDim2.new(0,15,0,0)
    Z.BackgroundTransparency=1
    Z.Text=O
    Z.TextColor3=e.i
    Z.TextSize=16
    Z.Font=e.n
    Z.TextXAlignment=Enum.TextXAlignment.Left
    Z.Parent=V
    
    local _=Instance.new("TextLabel")
    _.Name="Sub"
    _.Size=UDim2.new(0,200,1,0)
    _.Position=UDim2.new(0,15+Z.TextBounds.X+8,0,0)
    _.BackgroundTransparency=1
    _.Text=P
    _.TextColor3=e.j
    _.TextSize=14
    _.Font=e.o
    _.TextXAlignment=Enum.TextXAlignment.Left
    _.Parent=V
    
    local a0=Instance.new("Frame")
    a0.Name="Btns"
    a0.Size=UDim2.new(0,80,1,0)
    a0.Position=UDim2.new(1,-80,0,0)
    a0.BackgroundTransparency=1
    a0.Parent=V
    
    local a1=Instance.new("UIListLayout")
    a1.FillDirection=Enum.FillDirection.Horizontal
    a1.HorizontalAlignment=Enum.HorizontalAlignment.Right
    a1.VerticalAlignment=Enum.VerticalAlignment.Center
    a1.Padding=UDim.new(0,8)
    a1.Parent=a0
    
    local a2=Instance.new("TextButton")
    a2.Name="Min"
    a2.Size=UDim2.new(0,30,0,30)
    a2.BackgroundColor3=e.f
    a2.BackgroundTransparency=0.5
    a2.BorderSizePixel=0
    a2.Text="_"
    a2.TextColor3=e.i
    a2.TextSize=18
    a2.Font=e.n
    a2.Parent=a0
    
    local a3=Instance.new("UICorner")
    a3.CornerRadius=UDim.new(0,6)
    a3.Parent=a2
    
    local a4=Instance.new("TextButton")
    a4.Name="Close"
    a4.Size=UDim2.new(0,30,0,30)
    a4.BackgroundColor3=e.l
    a4.BackgroundTransparency=0.5
    a4.BorderSizePixel=0
    a4.Text="×"
    a4.TextColor3=e.i
    a4.TextSize=24
    a4.Font=e.n
    a4.Parent=a0
    
    local a5=Instance.new("UICorner")
    a5.CornerRadius=UDim.new(0,6)
    a5.Parent=a4
    
    local a6=Instance.new("Frame")
    a6.Name="Content"
    a6.Size=UDim2.new(1,0,1,-50)
    a6.Position=UDim2.new(0,0,0,50)
    a6.BackgroundTransparency=1
    a6.Parent=S
    
    local a7=Instance.new("Frame")
    a7.Name="Side"
    a7.Size=UDim2.new(0,160,1,0)
    a7.BackgroundColor3=e.h
    a7.BorderSizePixel=0
    a7.Parent=a6
    
    local a8=Instance.new("UICorner")
    a8.CornerRadius=UDim.new(0,6)
    a8.Parent=a7
    
    local a9=Instance.new("Frame")
    a9.Size=UDim2.new(0,6,1,0)
    a9.Position=UDim2.new(1,-6,0,0)
    a9.BackgroundColor3=e.h
    a9.BorderSizePixel=0
    a9.Parent=a7
    
    local b0=Instance.new("ScrollingFrame")
    b0.Name="TabList"
    b0.Size=UDim2.new(1,-10,1,-10)
    b0.Position=UDim2.new(0,5,0,5)
    b0.BackgroundTransparency=1
    b0.BorderSizePixel=0
    b0.ScrollBarThickness=4
    b0.ScrollBarImageColor3=e.g
    b0.CanvasSize=UDim2.new(0,0,0,0)
    b0.Parent=a7
    
    local b1=Instance.new("UIListLayout")
    b1.Padding=UDim.new(0,6)
    b1.Parent=b0
    
    b1:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        b0.CanvasSize=UDim2.new(0,0,0,b1.AbsoluteContentSize.Y+10)
    end)
    
    local b2=Instance.new("Frame")
    b2.Name="Pages"
    b2.Size=UDim2.new(1,-170,1,-10)
    b2.Position=UDim2.new(0,165,0,5)
    b2.BackgroundTransparency=1
    b2.Parent=a6
    
    z(S,V)
    
    a2.MouseButton1Click:Connect(function()
        K.N=not K.N
        local b3=K.N and UDim2.new(0,Q.X.Offset,0,50)or Q
        t(S,TweenInfo.new(e.r,e.s),{Size=b3})
        a2.Text=K.N and"□"or"_"
    end)
    
    a4.MouseButton1Click:Connect(function()
        t(S,TweenInfo.new(e.r,e.s),{Size=UDim2.new(0,0,0,0)}):Wait()
        R:Destroy()
    end)
    
    a2.MouseEnter:Connect(function()
        t(a2,TweenInfo.new(0.2),{BackgroundTransparency=0.3})
    end)
    
    a2.MouseLeave:Connect(function()
        t(a2,TweenInfo.new(0.2),{BackgroundTransparency=0.5})
    end)
    
    a4.MouseEnter:Connect(function()
        t(a4,TweenInfo.new(0.2),{BackgroundTransparency=0.3})
    end)
    
    a4.MouseLeave:Connect(function()
        t(a4,TweenInfo.new(0.2),{BackgroundTransparency=0.5})
    end)
    
    function K:CreateTab(b4)
        local b5={
            b6={},
        }
        
        b4=b4 or{}
        local b7=b4.Name or"Tab"
        local b8=b4.Icon or"rbxassetid://7733992901"
        
        local b9=Instance.new("TextButton")
        b9.Name=b7
        b9.Size=UDim2.new(1,0,0,40)
        b9.BackgroundColor3=e.f
        b9.BackgroundTransparency=1
        b9.BorderSizePixel=0
        b9.Text=""
        b9.Parent=b0
        
        local c0=Instance.new("UICorner")
        c0.CornerRadius=UDim.new(0,6)
        c0.Parent=b9
        
        local c1=Instance.new("ImageLabel")
        c1.Size=UDim2.new(0,20,0,20)
        c1.Position=UDim2.new(0,10,0.5,0)
        c1.AnchorPoint=Vector2.new(0,0.5)
        c1.BackgroundTransparency=1
        c1.Image=b8
        c1.ImageColor3=e.j
        c1.Parent=b9
        
        local c2=Instance.new("TextLabel")
        c2.Size=UDim2.new(1,-45,1,0)
        c2.Position=UDim2.new(0,40,0,0)
        c2.BackgroundTransparency=1
        c2.Text=b7
        c2.TextColor3=e.j
        c2.TextSize=14
        c2.Font=e.o
        c2.TextXAlignment=Enum.TextXAlignment.Left
        c2.Parent=b9
        
        local c3=Instance.new("Frame")
        c3.Name="Indicator"
        c3.Size=UDim2.new(0,3,0,0)
        c3.Position=UDim2.new(0,0,0.5,0)
        c3.AnchorPoint=Vector2.new(0,0.5)
        c3.BackgroundColor3=e.g
        c3.BorderSizePixel=0
        c3.Parent=b9
        
        local c4=Instance.new("UICorner")
        c4.CornerRadius=UDim.new(1,0)
        c4.Parent=c3
        
        local c5=Instance.new("ScrollingFrame")
        c5.Name=b7
        c5.Size=UDim2.new(1,0,1,0)
        c5.BackgroundTransparency=1
        c5.BorderSizePixel=0
        c5.ScrollBarThickness=4
        c5.ScrollBarImageColor3=e.g
        c5.CanvasSize=UDim2.new(0,0,0,0)
        c5.Visible=false
        c5.Parent=b2
        
        local c6=Instance.new("UIListLayout")
        c6.Padding=UDim.new(0,8)
        c6.Parent=c5
        
        local c7=Instance.new("UIPadding")
        c7.PaddingLeft=UDim.new(0,10)
        c7.PaddingRight=UDim.new(0,10)
        c7.PaddingTop=UDim.new(0,10)
        c7.PaddingBottom=UDim.new(0,10)
        c7.Parent=c5
        
        c6:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            c5.CanvasSize=UDim2.new(0,0,0,c6.AbsoluteContentSize.Y+20)
        end)
        
        b9.MouseButton1Click:Connect(function()
            for c8,c9 in pairs(K.L)do
                local d0=c9.d1
                local d2=c9.d3
                local d4=c9.d5
                local d6=c9.d7
                
                if c9==b5 then
                    t(d0,TweenInfo.new(0.2),{BackgroundTransparency=0})
                    t(d2,TweenInfo.new(0.2),{ImageColor3=e.i})
                    t(d4,TweenInfo.new(0.2),{TextColor3=e.i})
                    t(d6,TweenInfo.new(0.2),{Size=UDim2.new(0,3,0,30)})
                    d3.Visible=true
                else
                    t(d0,TweenInfo.new(0.2),{BackgroundTransparency=1})
                    t(d2,TweenInfo.new(0.2),{ImageColor3=e.j})
                    t(d4,TweenInfo.new(0.2),{TextColor3=e.j})
                    t(d6,TweenInfo.new(0.2),{Size=UDim2.new(0,3,0,0)})
                    c9.d3.Visible=false
                end
            end
        end)
        
        b9.MouseEnter:Connect(function()
            if K.M~=b5 then
                t(b9,TweenInfo.new(0.2),{BackgroundTransparency=0.9})
            end
        end)
        
        b9.MouseLeave:Connect(function()
            if K.M~=b5 then
                t(b9,TweenInfo.new(0.2),{BackgroundTransparency=1})
            end
        end)
        
        b5.d1=b9
        b5.d2=c1
        b5.d4=c2
        b5.d6=c3
        b5.d3=c5
        
        table.insert(K.L,b5)
        
        if#K.L==1 then
            K.M=b5
            b9.BackgroundTransparency=0
            c1.ImageColor3=e.i
            c2.TextColor3=e.i
            c3.Size=UDim2.new(0,3,0,30)
            c5.Visible=true
        end
        
        function b5:AddButton(d8)
            d8=d8 or{}
            local d9=d8.Name or"Button"
            local e0=d8.Callback or function()end
            
            local e1=Instance.new("TextButton")
            e1.Name=d9
            e1.Size=UDim2.new(1,0,0,40)
            e1.BackgroundColor3=e.h
            e1.BorderSizePixel=0
            e1.Text=""
            e1.Parent=c5
            
            local e2=Instance.new("UICorner")
            e2.CornerRadius=UDim.new(0,6)
            e2.Parent=e1
            
            local e3=Instance.new("TextLabel")
            e3.Size=UDim2.new(1,-20,1,0)
            e3.Position=UDim2.new(0,10,0,0)
            e3.BackgroundTransparency=1
            e3.Text=d9
            e3.TextColor3=e.i
            e3.TextSize=14
            e3.Font=e.o
            e3.TextXAlignment=Enum.TextXAlignment.Left
            e3.Parent=e1
            
            e1.MouseButton1Click:Connect(function()
                t(e1,TweenInfo.new(0.1),{BackgroundColor3=e.g}):Wait()
                t(e1,TweenInfo.new(0.1),{BackgroundColor3=e.h})
                pcall(e0)
            end)
            
            e1.MouseEnter:Connect(function()
                t(e1,TweenInfo.new(0.2),{BackgroundColor3=Color3.fromRGB(45,45,55)})
            end)
            
            e1.MouseLeave:Connect(function()
                t(e1,TweenInfo.new(0.2),{BackgroundColor3=e.h})
            end)
        end
        
        function b5:AddToggle(e4)
            e4=e4 or{}
            local e5=e4.Name or"Toggle"
            local e6=e4.Default or false
            local e7=e4.Callback or function()end
            
            local e8=Instance.new("Frame")
            e8.Name=e5
            e8.Size=UDim2.new(1,0,0,40)
            e8.BackgroundColor3=e.h
            e8.BorderSizePixel=0
            e8.Parent=c5
            
            local e9=Instance.new("UICorner")
            e9.CornerRadius=UDim.new(0,6)
            e9.Parent=e8
            
            local f0=Instance.new("TextLabel")
            f0.Size=UDim2.new(1,-60,1,0)
            f0.Position=UDim2.new(0,10,0,0)
            f0.BackgroundTransparency=1
            f0.Text=e5
            f0.TextColor3=e.i
            f0.TextSize=14
            f0.Font=e.o
            f0.TextXAlignment=Enum.TextXAlignment.Left
            f0.Parent=e8
            
            local f1=Instance.new("TextButton")
            f1.Size=UDim2.new(0,45,0,24)
            f1.Position=UDim2.new(1,-50,0.5,0)
            f1.AnchorPoint=Vector2.new(0,0.5)
            f1.BackgroundColor3=e6 and e.g or Color3.fromRGB(60,60,70)
            f1.BorderSizePixel=0
            f1.Text=""
            f1.Parent=e8
            
            local f2=Instance.new("UICorner")
            f2.CornerRadius=UDim.new(1,0)
            f2.Parent=f1
            
            local f3=Instance.new("Frame")
            f3.Name="Toggle"
            f3.Size=UDim2.new(0,18,0,18)
            f3.Position=e6 and UDim2.new(1,-21,0.5,0)or UDim2.new(0,3,0.5,0)
            f3.AnchorPoint=Vector2.new(0,0.5)
            f3.BackgroundColor3=e.i
            f3.BorderSizePixel=0
            f3.Parent=f1
            
            local f4=Instance.new("UICorner")
            f4.CornerRadius=UDim.new(1,0)
            f4.Parent=f3
            
            f1.MouseButton1Click:Connect(function()
                e6=not e6
                local f5=e6 and e.g or Color3.fromRGB(60,60,70)
                local f6=e6 and UDim2.new(1,-21,0.5,0)or UDim2.new(0,3,0.5,0)
                
                t(f1,TweenInfo.new(0.2),{BackgroundColor3=f5})
                t(f3,TweenInfo.new(0.2),{Position=f6})
                pcall(e7,e6)
            end)
        end
        
        function b5:AddSlider(f7)
            f7=f7 or{}
            local f8=f7.Name or"Slider"
            local f9=f7.Min or0
            local g0=f7.Max or100
            local g1=f7.Default or50
            local g2=f7.Callback or function()end
            
            local g3=Instance.new("Frame")
            g3.Name=f8
            g3.Size=UDim2.new(1,0,0,60)
            g3.BackgroundColor3=e.h
            g3.BorderSizePixel=0
            g3.Parent=c5
            
            local g4=Instance.new("UICorner")
            g4.CornerRadius=UDim.new(0,6)
            g4.Parent=g3
            
            local g5=Instance.new("TextLabel")
            g5.Size=UDim2.new(1,-20,0,20)
            g5.Position=UDim2.new(0,10,0,5)
            g5.BackgroundTransparency=1
            g5.Text=f8
            g5.TextColor3=e.i
            g5.TextSize=14
            g5.Font=e.o
            g5.TextXAlignment=Enum.TextXAlignment.Left
            g5.Parent=g3
            
            local g6=Instance.new("TextLabel")
            g6.Size=UDim2.new(0,50,0,20)
            g6.Position=UDim2.new(1,-60,0,5)
            g6.BackgroundTransparency=1
            g6.Text=tostring(g1)
            g6.TextColor3=e.g
            g6.TextSize=14
            g6.Font=e.n
            g6.TextXAlignment=Enum.TextXAlignment.Right
            g6.Parent=g3
            
            local g7=Instance.new("Frame")
            g7.Size=UDim2.new(1,-20,0,6)
            g7.Position=UDim2.new(0,10,1,-15)
            g7.BackgroundColor3=Color3.fromRGB(60,60,70)
            g7.BorderSizePixel=0
            g7.Parent=g3
            
            local g8=Instance.new("UICorner")
            g8.CornerRadius=UDim.new(1,0)
            g8.Parent=g7
            
            local g9=Instance.new("Frame")
            g9.Name="Fill"
            g9.Size=UDim2.new((g1-f9)/(g0-f9),0,1,0)
            g9.BackgroundColor3=e.g
            g9.BorderSizePixel=0
            g9.Parent=g7
            
            local h0=Instance.new("UICorner")
            h0.CornerRadius=UDim.new(1,0)
            h0.Parent=g9
            
            local h1=Instance.new("TextButton")
            h1.Size=UDim2.new(0,14,0,14)
            h1.Position=UDim2.new((g1-f9)/(g0-f9),0,0.5,0)
            h1.AnchorPoint=Vector2.new(0.5,0.5)
            h1.BackgroundColor3=e.i
            h1.BorderSizePixel=0
            h1.Text=""
            h1.Parent=g7
            
            local h2=Instance.new("UICorner")
            h2.CornerRadius=UDim.new(1,0)
            h2.Parent=h1
            
            local h3=false
            
            h1.MouseButton1Down:Connect(function()
                h3=true
            end)
            
            b.InputEnded:Connect(function(h4)
                if h4.UserInputType==Enum.UserInputType.MouseButton1 or h4.UserInputType==Enum.UserInputType.Touch then
                    h3=false
                end
            end)
            
            b.InputChanged:Connect(function(h5)
                if h3 and(h5.UserInputType==Enum.UserInputType.MouseMovement or h5.UserInputType==Enum.UserInputType.Touch)then
                    local h6=math.clamp((h5.Position.X-g7.AbsolutePosition.X)/g7.AbsoluteSize.X,0,1)
                    local h7=math.floor(f9+(g0-f9)*h6)
                    
                    g6.Text=tostring(h7)
                    t(g9,TweenInfo.new(0.1),{Size=UDim2.new(h6,0,1,0)})
                    t(h1,TweenInfo.new(0.1),{Position=UDim2.new(h6,0,0.5,0)})
                    pcall(g2,h7)
                end
            end)
        end
        
        function b5:AddTextbox(h8)
            h8=h8 or{}
            local h9=h8.Name or"Textbox"
            local i0=h8.Default or""
            local i1=h8.Placeholder or"Enter text..."
            local i2=h8.Callback or function()end
            
            local i3=Instance.new("Frame")
            i3.Name=h9
            i3.Size=UDim2.new(1,0,0,70)
            i3.BackgroundColor3=e.h
            i3.BorderSizePixel=0
            i3.Parent=c5
            
            local i4=Instance.new("UICorner")
            i4.CornerRadius=UDim.new(0,6)
            i4.Parent=i3
            
            local i5=Instance.new("TextLabel")
            i5.Size=UDim2.new(1,-20,0,20)
            i5.Position=UDim2.new(0,10,0,5)
            i5.BackgroundTransparency=1
            i5.Text=h9
            i5.TextColor3=e.i
            i5.TextSize=14
            i5.Font=e.o
            i5.TextXAlignment=Enum.TextXAlignment.Left
            i5.Parent=i3
            
            local i6=Instance.new("TextBox")
            i6.Size=UDim2.new(1,-20,0,35)
            i6.Position=UDim2.new(0,10,0,30)
            i6.BackgroundColor3=Color3.fromRGB(45,45,55)
            i6.BorderSizePixel=0
            i6.Text=i0
            i6.PlaceholderText=i1
            i6.TextColor3=e.i
            i6.PlaceholderColor3=e.j
            i6.TextSize=13
            i6.Font=e.o
            i6.ClearTextOnFocus=false
            i6.TextXAlignment=Enum.TextXAlignment.Left
            i6.Parent=i3
            
            local i7=Instance.new("UICorner")
            i7.CornerRadius=UDim.new(0,6)
            i7.Parent=i6
            
            local i8=Instance.new("UIPadding")
            i8.PaddingLeft=UDim.new(0,10)
            i8.PaddingRight=UDim.new(0,10)
            i8.Parent=i6
            
            i6.FocusLost:Connect(function(i9)
                if i9 then
                    pcall(i2,i6.Text)
                end
            end)
        end
        
        function b5:AddLabel(j0)
            j0=j0 or{}
            local j1=j0.Text or"Label"
            
            local j2=Instance.new("Frame")
            j2.Name="Label"
            j2.Size=UDim2.new(1,0,0,35)
            j2.BackgroundColor3=e.h
            j2.BorderSizePixel=0
            j2.Parent=c5
            
            local j3=Instance.new("UICorner")
            j3.CornerRadius=UDim.new(0,6)
            j3.Parent=j2
            
            local j4=Instance.new("TextLabel")
            j4.Size=UDim2.new(1,-20,1,0)
            j4.Position=UDim2.new(0,10,0,0)
            j4.BackgroundTransparency=1
            j4.Text=j1
            j4.TextColor3=e.i
            j4.TextSize=14
            j4.Font=e.o
            j4.TextXAlignment=Enum.TextXAlignment.Left
            j4.TextWrapped=true
            j4.Parent=j2
            
            return{
                j5=function(j6,j7)
                    j4.Text=j7
                end
            }
        end
        
        function b5:AddDropdown(j8)
            j8=j8 or{}
            local j9=j8.Name or"Dropdown"
            local k0=j8.Options or{"Option1","Option2"}
            local k1=j8.Default or k0[1]
            local k2=j8.Callback or function()end
            
            local k3=Instance.new("Frame")
            k3.Name=j9
            k3.Size=UDim2.new(1,0,0,45)
            k3.BackgroundColor3=e.h
            k3.BorderSizePixel=0
            k3.Parent=c5
            
            local k4=Instance.new("UICorner")
            k4.CornerRadius=UDim.new(0,6)
            k4.Parent=k3
            
            local k5=Instance.new("TextLabel")
            k5.Size=UDim2.new(1,-20,0,20)
            k5.Position=UDim2.new(0,10,0,5)
            k5.BackgroundTransparency=1
            k5.Text=j9
            k5.TextColor3=e.i
            k5.TextSize=14
            k5.Font=e.o
            k5.TextXAlignment=Enum.TextXAlignment.Left
            k5.Parent=k3
            
            local k6=Instance.new("TextButton")
            k6.Size=UDim2.new(1,-20,0,25)
            k6.Position=UDim2.new(0,10,0,25)
            k6.BackgroundColor3=Color3.fromRGB(45,45,55)
            k6.BorderSizePixel=0
            k6.Text=""
            k6.Parent=k3
            
            local k7=Instance.new("UICorner")
            k7.CornerRadius=UDim.new(0,6)
            k7.Parent=k6
            
            local k8=Instance.new("TextLabel")
            k8.Size=UDim2.new(1,-30,1,0)
            k8.Position=UDim2.new(0,10,0,0)
            k8.BackgroundTransparency=1
            k8.Text=k1
            k8.TextColor3=e.i
            k8.TextSize=13
            k8.Font=e.o
            k8.TextXAlignment=Enum.TextXAlignment.Left
            k8.Parent=k6
            
            local k9=Instance.new("ImageLabel")
            k9.Size=UDim2.new(0,12,0,12)
            k9.Position=UDim2.new(1,-20,0.5,0)
            k9.AnchorPoint=Vector2.new(0,0.5)
            k9.BackgroundTransparency=1
            k9.Image="rbxassetid://7733717447"
            k9.ImageColor3=e.j
            k9.Parent=k6
            
            local l0=Instance.new("Frame")
            l0.Name="List"
            l0.Size=UDim2.new(1,-20,0,0)
            l0.Position=UDim2.new(0,10,0,55)
            l0.BackgroundColor3=e.h
            l0.BorderSizePixel=0
            l0.Visible=false
            l0.ZIndex=10
            l0.Parent=k3
            
            local l1=Instance.new("UICorner")
            l1.CornerRadius=UDim.new(0,6)
            l1.Parent=l0
            
            local l2=Instance.new("UIListLayout")
            l2.Padding=UDim.new(0,2)
            l2.Parent=l0
            
            local l3=Instance.new("UIPadding")
            l3.PaddingLeft=UDim.new(0,5)
            l3.PaddingRight=UDim.new(0,5)
            l3.PaddingTop=UDim.new(0,5)
            l3.PaddingBottom=UDim.new(0,5)
            l3.Parent=l0
            
            local l4=false
            
            for l5,l6 in ipairs(k0)do
                local l7=Instance.new("TextButton")
                l7.Size=UDim2.new(1,0,0,30)
                l7.BackgroundColor3=Color3.fromRGB(50,50,60)
                l7.BorderSizePixel=0
                l7.Text=l6
                l7.TextColor3=e.i
                l7.TextSize=13
                l7.Font=e.o
                l7.Parent=l0
                
                local l8=Instance.new("UICorner")
                l8.CornerRadius=UDim.new(0,4)
                l8.Parent=l7
                
                l7.MouseButton1Click:Connect(function()
                    k8.Text=l6
                    l4=false
                    t(k3,TweenInfo.new(0.2),{Size=UDim2.new(1,0,0,45)})
                    t(l0,TweenInfo.new(0.2),{Size=UDim2.new(1,-20,0,0)})
                    t(k9,TweenInfo.new(0.2),{Rotation=0})
                    wait(0.2)
                    l0.Visible=false
                    pcall(k2,l6)
                end)
                
                l7.MouseEnter:Connect(function()
                    t(l7,TweenInfo.new(0.1),{BackgroundColor3=e.g})
                end)
                
                l7.MouseLeave:Connect(function()
                    t(l7,TweenInfo.new(0.1),{BackgroundColor3=Color3.fromRGB(50,50,60)})
                end)
            end
            
            k6.MouseButton1Click:Connect(function()
                l4=not l4
                local l9=#k0*32+10
                
                if l4 then
                    l0.Visible=true
                    t(k3,TweenInfo.new(0.2),{Size=UDim2.new(1,0,0,45+l9+5)})
                    t(l0,TweenInfo.new(0.2),{Size=UDim2.new(1,-20,0,l9)})
                    t(k9,TweenInfo.new(0.2),{Rotation=180})
                else
                    t(k3,TweenInfo.new(0.2),{Size=UDim2.new(1,0,0,45)})
                    t(l0,TweenInfo.new(0.2),{Size=UDim2.new(1,-20,0,0)})
                    t(k9,TweenInfo.new(0.2),{Rotation=0})
                    wait(0.2)
                    l0.Visible=false
                end
            end)
        end
        
        return b5
    end
    
    return K
end

return d
