# bfs
def find_value(tree, value):
    if tree:
        queue = [tree]
        while len(queue) > 0:
            node = queue.pop(0)
            if node.value == value:
                return node
            for child in ['left', 'right']:
                n = getattr(node, child)
                if n is not None:
                    queue.append(n)
    return None

# #dfs
# def find_value(tree, value):
#     if tree:
#         stack = [tree]
#         while len(stack) > 0:
#             node = stack.pop()
#             if node.value == value:
#                 return node
#             for child in ['left', 'right']:
#                 n = getattr(node, child)
#                 if n is not None:
#                     stack.append(n)
#     return None
