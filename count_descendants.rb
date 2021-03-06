class Node
	def set_child(child)
		@firstChild = child
	end

	def set_sibling(sib)
		@firstSibling = sib
	end

	def firstChild
		@firstChild
	end

	def firstSibling
		@firstSibling
	end
end

class Root
	def initialize(node)
		@root = node
		@count = 0
	end

	def count(node)
		if count == 0 && nodefirstChild != nil
			count += 1
			count_descendants(node.firstChild)
		elsif node.firstChild != nil && node.firstSibling != nil
			@count += 2
			count(node.firstChild)
			count(node.firstSibling)
		elsif node.firstChild != nil && node.firstSibling == nil
			@count += 1
			count(node.firstChild)
		elsif node.firstChild == nil && node.firstSibling != nil
			@count += 1
			count(node.firstSibling)
		else
			@count += 0
		end
	end

	def count_descendants
		count(@root)
		return @count
	end
end