class Solution:
    def isValidSudoku(self, board: list[list[str]]) -> bool:
        

        conditions = []
        for x in board:
            ele = "."
            x=" ".join(x) 
            x=x.replace(str(ele),"") 
            x=x.split()
            
            if len(x) == len(set(x)):
                conditions.append(True)
            else:
                conditions.append(False)
            

        conc_ele = list(zip(board[0],board[1],board[2],board[3],board[4],board[5],board[6],board[7],board[8]))

        for x in conc_ele:
            ele = "."
            x=" ".join(x) 
            x=x.replace(str(ele),"") 
            x=x.split()
            
            if len(x) == len(set(x)):
                conditions.append(True)
            else:
                conditions.append(False)
            
        section1 = board[:3]
        section2 = board[3:6]
        section3 = board[6:9]

        sect = {}
        #new_sec1 = list(zip(section1[0],section1[1],section1[2]))
        
        for x in section1:
            if 1 in sect and 2 in sect and 3 in sect:
                sect[1] += x[:3]
                sect[2] += x[3:6]
                sect[3] += x[6:9]
            else:
                sect[1] = []
                sect[2] = []
                sect[3] = []
                sect[1] += x[:3]
                sect[2] += x[3:6]
                sect[3] += x[6:9]
        
        for x in section2:
            if 4 in sect and 5 in sect and 6 in sect:
                sect[4] += x[:3]
                sect[5] += x[3:6]
                sect[6] += x[6:9]
            else:
                sect[4] = []
                sect[5] = []
                sect[6] = []
                sect[4] += x[:3]
                sect[5] += x[3:6]
                sect[6] += x[6:9]
        
        for x in section3:
            if 7 in sect and 8 in sect and 9 in sect:
                sect[7] += x[:3]
                sect[8] += x[3:6]
                sect[9] += x[6:9]
            else:
                sect[7] = []
                sect[8] = []
                sect[9] = []
                sect[7] += x[:3]
                sect[8] += x[3:6]
                sect[9] += x[6:9]
        
        for val in sect.values():
            ele = "."
            val=" ".join(val) 
            val=val.replace(str(ele),"") 
            val=val.split() 
            
            if len(val) == len(set(val)):
                conditions.append(True)
            else:
                conditions.append(False)
        
        if False in conditions:
            return False
        else:
            return True

test1 = Solution()
sudoku1 = [["5","3",".",".","7",".",".",".","."]
,["6",".",".","1","9","5",".",".","."]
,[".","9","8",".",".",".",".","6","."]
,["8",".",".",".","6",".",".",".","3"]
,["4",".",".","8",".","3",".",".","1"]
,["7",".",".",".","2",".",".",".","6"]
,[".","6",".",".",".",".","2","8","."]
,[".",".",".","4","1","9",".",".","5"]
,[".",".",".",".","8",".",".","7","9"]]

print(test1.isValidSudoku(sudoku1))