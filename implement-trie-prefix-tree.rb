class TrieNode
    # Initialize your data structure here.
    def initialize
      @children = Array.new
      @val = nil
      for i in 0...26
        @children.push(nil)
      end
    end

    attr_accessor :children
    attr_accessor :val
end

class Trie
    def initialize
        @root = TrieNode.new
    end

    # @param {string} word
    # @return {void}
    # Inserts a word into the trie.
    def insert(word)
      node = @root
      for i in 0...word.size
        ch = word[i]
        index = ch.ord - 'a'.ord
        if node.children[index] == nil
          new_node = TrieNode.new
          node.children[index] = new_node
          node = new_node
        else
          node = node.children[index]
        end
      end
      node.val = true
    end

    # @param {string} word
    # @return {boolean}
    # Returns if the word is in the trie.
    def search(word)
      node = @root
      for i in 0...word.size
        ch = word[i]
        index = ch.ord - 'a'.ord
        next_node = node.children[index]
        if i == word.size - 1 && next_node != nil && next_node.val
          return true
        elsif next_node == nil
          return false
        end
        node = next_node
      end
      return false
    end

    # @param {string} prefix
    # @return {boolean}
    # Returns if there is any word in the trie
    # that starts with the given prefix.
    def starts_with(prefix)
      node = @root
      for i in 0...prefix.size
        ch = prefix[i]
        index = ch.ord - 'a'.ord
        next_node = node.children[index]
        if i == prefix.size - 1 && next_node != nil
          return true
        elsif next_node == nil
          return false
        end
        node = next_node
      end
      return false
    end
end

# Your Trie object will be instantiated and called as such:
trie = Trie.new
trie.insert("somestring")
trie.search("key")
