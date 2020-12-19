class Task
  @@count = 0

  def initialize(title:, content:)
    @@count += 1
    @id = @@count
    @title = title
    @content = content
  end

  def info
    "[No.#{@id}] #{@title}:#{@content}"
  end
end

class ToDo

  def initialize
    @tasks = []
  end

  def add(task)
    puts "【追加】#{task.info}"
    @tasks << task
  end

  def info
    puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
    @tasks.each do |task|
      puts "#{task.info}"
    end
    puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
  end

  def delete(delete_task)
    if @tasks.include?(delete_task)
      puts "【削除】#{delete_task.info}"
    else
      puts "【！】 該当idのタスクはありません。"
    end
  end
  
end

task1 = Task.new(title: "洗濯", content: "7時半までに干し終える")
task2 = Task.new(title: "仕事", content: "9時〜18時")
task3 = Task.new(title: "買物", content: "卵, ヨーグルト")

todo = ToDo.new
todo.add(task1)
todo.add(task2)
todo.info
todo.delete(id: 1)
todo.add(task3)
todo.delete(id: 4)
todo.delete(id: 3)
todo.info