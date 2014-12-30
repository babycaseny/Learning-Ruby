#-*- coding: UTF-8 -*-

def prompt()
    print "> "
end

def checkIntger(input)
    
    if input.to_i() != 0 || input == "0"
       return true

    else
        return false
    end

end

def dead(name)
    puts
    puts "Dead End: 你已經死了！"
    puts "按Enter重來一次，或Crtl + C 退出遊戲。"

    gets.chomp

    start(name)
end

def start(name)

    puts 

    puts "大淀：歡迎你著任，#{name}提督！在正式開始工作之前，你可以先盡情參觀一下鎮守府。"

    puts

    puts "該去哪裡呢？"
    puts "1. 空母宿舍"
    puts "2. 驅遂艦宿舍"
    puts "3. 戰艦宿舍"
    puts "4. 浴堂"
    puts "5. 餐館"

    prompt; where = gets.chomp

    if checkIntger(where) == true
        
        if where == "1"
            aircraft(name)

        elsif where == "5"
            restaurant(name)
        
        else 
           puts
           puts "其他地方暫未開放。"

        end

    else
        puts 
        puts "警告：請輸入數字！"
        puts
        start(name)

    end

end

def aircraft(name)
    puts
    puts("空母宿舍看起來十分破舊，大概已經很久沒修理過了吧。周圍也看不見其他艦娘的身影。")
    puts "該怎麼辦？"
    puts "1.總之看到房間就進去逛逛看。"
    puts "2.還是先回去吧。"

    prompt; where = gets.chomp

    if checkIntger(where) == true
        
        if where == "1"
            puts
            puts "正當你心裡打著壞主意，想要潛入空母房間的時侯....."
            puts
            puts "「提督，你怎麼站在我的房門前？難道想偷東西嗎？第一次攻擊隊，全體發艦！」"
            puts "你似乎被瑞鶴發現了的樣子。艦載機無情地朝你襲來，不斷地進行轟炸－－"
            puts "然後你就死了。"

            dead(name)
        
        else
            start(name)

        end

     else
         puts
         puts "請輸入數字！"
         aircraft(name)
     end
end

def restaurant(name)
    puts

    puts "你走到食堂附近，注意到門前貼了一張告示：「食材短缺中，暫停開放」"
    puts "這個鎮守府真的沒問題嗎？總之還是先回去吧。"

    start(name)
end
puts "在開始遊戲之前，請先輸入你的名字。"
prompt; name = gets.chomp
start(name)
