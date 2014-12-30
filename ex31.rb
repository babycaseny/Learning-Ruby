#-*- coding: UTF-8 -*-

def prompt
    print "> "
end

puts "You enter a dark room with two doors. Do you through door #1 or door #2 or door #3 ?"

prompt; door = gets.chomp

if door == "1"
    puts "There's a giant bear here eating a cheese cake. What do you do?"
    puts "1. Take the cake."
    puts "2. Scream at the bear."

    prompt; bear = gets.chomp

    if bear == "1"
        puts "The bear eats your face off. Good Job!"

    elsif bear == "2"
        puts "The bear eats your legs off. Good Job!"

    else
        puts "Well, doing #{bear} is probably better. Bear runs away."

end

elsif door == "2"
    puts "You stare into the endless abyss at Cthuhlu's retina."
    puts "1. Blueberries."
    puts "2. Yellow jacket clothespins."
    puts "3. Understanding revolvers yelling melodies."

    prompt; insanity = gets.chomp

    if insanity == "1" or insanity == "2"
     puts "Your body survives powered by mind of jello. Good Job!"
   
    else
     puts "The insanity rots your eyes into a pool of muck. Good Job!"
    
    end

elsif door == "3"
    puts "你好像來到某個艦娘房間裡的樣子。"
    puts "1.觀察環境。"
    puts "2.尋找內褲。"
    puts "3.睡在床上。"

    prompt; kancolle = gets.chomp

    if kancolle == "1"
        puts "你發現房間裡有些弓道用品。房間的主人是空母嗎？"
    
    elsif kancolle == "2"
        puts "爆擊機突然墜入房間，並把炸彈丟到你的頭上。你死了。"

    elsif kancolle == "3"
        puts "你就這麼一睡不起，然後被人抓走了。"

    else
        puts "好事情，不做嗎？"
end

else
    puts "You stumble around and fall on a knife and die. Good Job!"
end       
