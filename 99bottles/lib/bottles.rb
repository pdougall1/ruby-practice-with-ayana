class Bottles
    def verse (num_of_bottles)
        if num_of_bottles > 2 then
        verse = <<-VERSE 
#{num_of_bottles} bottles of beer on the wall, #{num_of_bottles} bottles of beer.
Take one down and pass it around, #{num_of_bottles - 1} bottles of beer on the wall.
VERSE
        elsif num_of_bottles == 2 then
            verse = <<-VERSE 
#{num_of_bottles} bottles of beer on the wall, #{num_of_bottles} bottles of beer.
Take one down and pass it around, #{num_of_bottles - 1} bottle of beer on the wall.
VERSE
        elsif num_of_bottles == 1 then
        verse = <<-VERSE 
#{num_of_bottles} bottle of beer on the wall, #{num_of_bottles} bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
VERSE

        elsif num_of_bottles == 0 then
            verse = <<-VERSE 
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
        VERSE
        end

        return verse

    end

    def verses(*num_of_bottles)
    end

end