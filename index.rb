def janken
  puts "最初はグーじゃんけん・・・・"
  puts "[0]グー\n[1]チョキ\n[2]パー"

  player_hand = gets.chomp.to_i
  program_hand = rand(3)
  jankens = ["グー", "チョキ", "パー"]

  until (0..2).include?(player_hand)
    puts "0~2の数字を入力してください"
    player_hand = gets.chomp.to_i
  end

  puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[program_hand]}"

  if player_hand == program_hand
    puts "あいこで"
    janken
  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです"
    acchi_muite_hoi(:player_win)
  else
    puts "あなたの負けです"
    acchi_muite_hoi(:program_win)
  end
end

def acchi_muite_hoi(winner)
  puts "あっち向いてホイ！"
  puts "[0]上\n[1]右\n[2]下\n[3]左"

  player_direction = gets.chomp.to_i

  until (0..3).include?(player_direction)
    puts "0~3の数字を入力してください"
    player_direction = gets.chomp.to_i
  end

  program_direction = rand(4)
  directions = ["上", "右", "下", "左"]
  puts "あなたの指:#{directions[player_direction]}, 相手の顔:#{directions[program_direction]}"

  if player_direction == program_direction
    if winner == :player_win
      puts "あなたの勝ちです"
    else
      puts "あなたの負けです"
    end
  else
    puts "再戦！"
    janken
  end
end

janken
=begin
  # プログラムの手をランダムで決定
  program_hand = rand(3)
  jankens = ["グー", "チョキ","パー"]
  puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[program_hand]}"
 # 勝敗を判定
  result = (player_hand - program_hand + 3) % 3
  case result
  when 0
  puts "あいこで"
   return :draw
  when 1
   return :player_win
  when 2
   return :player_lose
end




=begin
  # 入力が不正な場合の処理
  unless (0..2).include?(player_hand)
    puts "不正な数値です"
    return nil
  end

  # プログラムの手をランダムで決定
  program_hand = rand(3)

  jankens = ["グー", "チョキ","パー"]
  puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[program_hand]}"

  # 勝敗を判定
  result = (player_hand - program_hand + 3) % 3
  case result
  when 0
    puts "あいこで"
    return :draw
  when 1
    return :player_win
  when 2
    return :player_lose
  end
end
=end

=begin
loop do
  result = janken
  break if result.nil?

  if result == :draw
    next
  elsif result == :player_win
    break if acchi_muite_hoi(:player_win)
  else
    break if acchi_muite_hoi(:player_lose)
  end
=end
#end