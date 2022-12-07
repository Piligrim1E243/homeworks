from application import salary
import sys
sys.path.append("application","db") 
from db import people

if __name__ == "__main__":
    print(salary.calculate_salary())