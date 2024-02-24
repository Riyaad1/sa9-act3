'''
Implementation of a stack using a linked list
'''

class Node:
    # Constructor
    def __init__(self, data, next_node):
        self.data = data
        self.next_node = next_node
    
class LLStack:
    # Constructor
    def __init__(self):
        self.head = None
        self.size = 0
    
    def push(self, new_data):
        self.head = Node(new_data, self.head)
        self.size += 1
        
    def pop(self):
        if self.size > 0:
            data_to_return = self.head.data
            self.head = self.head.next_node
            self.size -= 1
            return data_to_return
        
    def peek(self):
        if self.size > 0:
            return self.head.data