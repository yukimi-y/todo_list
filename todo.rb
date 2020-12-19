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

  def delete(id:)
    task = @tasks.find{|task| task.id === id}
    if task != nil
      puts "【削除】#{task.info}"
      @tasks.delete(task)
    else
      puts "【！】 該当idのタスクはありません。"
    end
  end
  
end