class Node:
    def __init__(self, value=None, link=None):
        self.value = value
        self.link = link

n3 = Node(value="T")
n2 = Node(value="A", link=n3)
n1 = Node(value="C", link=n2)

linked_list = n1

def last_entry(linked_list):

    # if linked_list:
    #     current_node = linked_list
    #     while current_node.link is not None:
    #         current_node = current_node.link
    #     return current_node
    # return None

    if linked_list:
        node = linked_list
        while True:
            if node.link is None:
                return node
            node = node.link

print(last_entry(linked_list))
