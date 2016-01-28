class TrieNode
  attr_accessor :val, :children
  def initialize
    @children = []
    @val = false
    for i in 0...26
      @children.push(nil)
    end
  end
end

class WordDictionary

    def initialize
      @root = TrieNode.new
    end

    # @param {string} word
    # @return {void}
    # Adds a word into the data structure.
    def add_word(word)
      node = @root
      for i in 0...word.size
        ch = word[i]
        ch_index = ch.ord - "a".ord
        if node.children[ch_index] == nil
          node.children[ch_index] = TrieNode.new
        end
        node = node.children[ch_index]
      end
      node.val = true
    end

    def search_rec(node, word)
       for i in 0...word.size
         ch = word[i]
         if ch == '.'
           for j in 0...node.children.size
             if node.children[j] != nil
               if search_rec(node.children[j], word[i + 1, word.size - i])
                 return true
               end
             end
           end
           return false
        else
          ch_index = ch.ord - 'a'.ord
          if node.children[ch_index] == nil
            return false
          end
          node = node.children[ch_index]
        end
      end
      return node.val
    end

    # @param {string} word
    # @return {boolean}
    # Returns if the word is in the data structure. A word could
    # contain the dot character '.' to represent any one letter.
    def search(word)
      return search_rec(@root, word)
    end
end

# Your WordDictionary object will be instantiated and called as such:
 word_dictionary = WordDictionary.new
 word_dictionary.add_word("word")
 word_dictionary.search("pattern")
