require 'member'
require 'account'
require 'transaction'


class Bank

  def initialize
    @member_list = []
    @member_id = 0
  end

  def new_member(ary)  
    @member_list[@member_id] = Member.new(ary)
    @member_id += 1
    @member_list[@member_id]
  end
    
  def members
    @new_array = []
    i = 0
    @member_list.length.times do
      @new_array[i] = @member_list[i].access_name
      i += 1
    end
    return @new_array
  end

  def get_member(member_id)
    @member_list[member_id]
  end

end

