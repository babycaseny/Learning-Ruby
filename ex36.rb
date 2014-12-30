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
            aircraft()
        
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

def aircraft()
    puts
    puts("空母宿舍看起來十分破舊，大概已經很久沒修理過了吧。周圍也看不見其他艦娘的身影。")
    puts "該怎麼辦？"
    puts "1.總之看到房間就進去逛逛看。"
    puts "2.還是先回去吧。"
end

puts "在開始遊戲之前，請先輸入你的名字。"
prompt; name = gets.chomp
start(name)
