list_of_students = []
list_of_lecturers = []

class Student:

    def __init__(self, name, surname, gender):
        self.name = name
        self.surname = surname
        self.gender = gender
        self.finished_courses = []
        self.courses_in_progress = []
        self.grades = {}
        list_of_students.append(self)

    def __str__(self):
        def middle_grade(self):
            res_1 = []
            res_2 = []
            for grade in self.grades.values():
                result_1 = sum(grade)
                result_2 = len(grade)
                res_1.append(result_1)
                res_2.append(result_2)
            total = (format(sum(res_1) / sum(res_2), '.1f'))
            return total
        
        res = (f" Имя: {self.name}\n Фамилия: {self.surname}\n"
        f" Средняя оценка за домашние задания: {middle_grade(self)}\n "
        f"Курсы в процессе изучения: {', '.join(self.courses_in_progress)}\n"
        f" Завершенные курсы: {', '.join(self.finished_courses)}")    
        return res

    def comparison(self, comp_student):
        def middle_grade(self):
            res_1 = []
            res_2 = []
            for grade in self.grades.values():
                result_1 = sum(grade)
                result_2 = len(grade)
                res_1.append(result_1)
                res_2.append(result_2)
            total = (format(sum(res_1) / sum(res_2), '.1f'))
            return total
        if isinstance(comp_student, Student):
            res_1 = middle_grade(self)
            res_2 = middle_grade(comp_student)
            if res_1 > res_2:
                result = (f"Средняя оценка за домашние задания студента" 
                f" {self.name} {self.surname} больше чем у студента" 
                f" {comp_student.name} {comp_student.surname}")
            elif res_1 < res_2:
                result = (f"Средняя оценка за домашние задания студента"
                f" {self.name} {self.surname} меньше чем у студента" 
                f" {comp_student.name} {comp_student.surname}")
            elif res_1 == res_2:
                result = (f"Среднии оценки за домашние задания студента" 
                f" {self.name} {self.surname} и студента" 
                f" {comp_student.name} {comp_student.surname} равны")
            return result 
        else:
            result = "Ошибка"
            return result
 
    def add_courses(self, course_name):
        self.finished_courses.append(course_name)   
 
    def rate_lecturer(self, lecturer, course, grade):
        if (isinstance(lecturer, Lecturer) and course in 
        self.courses_in_progress and course in lecturer.courses_attached):
            if course in lecturer.grades:
                lecturer.grades[course] += [grade]
            else:
                lecturer.grades[course] = [grade]
        else:
            return 'Ошибка'


class Mentor:

    def __init__(self, name, surname):
        self.name = name
        self.surname = surname
        self.courses_attached = []


class Lecturer(Mentor):

    def __init__(self, name, surname):
        super().__init__(name, surname)
        self.courses_attached = []
        self.grades = {}
        list_of_lecturers.append(self)

    def __str__(self):
        def middle_grade(self):
            res_1 = []
            res_2 = []
            for grade in self.grades.values():
                result_1 = sum(grade)
                result_2 = len(grade)
                res_1.append(result_1)
                res_2.append(result_2)
                total = (format(sum(res_1) / sum(res_2), '.1f'))
                return total
        res = (f" Имя: {self.name}\n Фамилия: {self.surname}\n"
        f" Средняя оценка за лекции: {middle_grade(self)}")
        return res

    def comparison(self, comp_lecturer):
        def middle_grade(self):
            res_1 = []
            res_2 = []
            for grade in self.grades.values():
                result_1 = sum(grade)
                result_2 = len(grade)
                res_1.append(result_1)
                res_2.append(result_2)
            total = (format(sum(res_1) / sum(res_2), '.1f'))
            return total
        if isinstance(comp_lecturer, Lecturer):
            res_1 = middle_grade(self)
            res_2 = middle_grade(comp_lecturer)
            if res_1 > res_2:
                result = (f"Средняя оценка за лекции лектора {self.name} {self.surname}" 
                f" больше чем у лектора {comp_lecturer.name} {comp_lecturer.surname}")
            elif res_1 < res_2:
                result = (f"Средняя оценка за лекции лектора {self.name} {self.surname}" 
                f" меньше чем у лектора {comp_lecturer.name} {comp_lecturer.surname}")
            elif res_1 == res_2:
                result = (f"Среднии оценки за лекции лектора {self.name} {self.surname}"
                f" и лектора {comp_lecturer.name} {comp_lecturer.surname} равны")
            return result 
        else:
            result = "Ошибка"
            return result


class Reviewer(Mentor):

    def __init__(self, name, surname):
        super().__init__(name, surname)

    def __str__(self):
        res = f''' Имя: {self.name}\n Фамилия: {self.surname}'''
        return res

    def rate_hw(self, student, course, grade):
        if (isinstance(student, Student) and course in self.courses_attached 
            and course in student.courses_in_progress):
            if course in student.grades:
                student.grades[course] += [grade]
            else:
                student.grades[course] = [grade]
        else:
            return 'Ошибка'


def middle_grades_of_students(list_of_students, course):
    for students in list_of_students:
        if course in students.courses_in_progress:
            res_1 = sum(students.grades[course])
            res_2 = len(students.grades[course])
            print(format(res_1 / res_2, '.1f'))


def middle_grades_of_lecturers(list_of_lecturers, course):
    for lecturers in list_of_lecturers:
        if course in lecturers.courses_attached:
            res_1 = sum(lecturers.grades[course])
            res_2 = len(lecturers.grades[course])
            print(format(res_1 / res_2, '.1f'))


student_1 = Student('Bobby', 'Chamington', 'Male')
student_1.add_courses('Введение в программирование')
student_1.courses_in_progress += ['Python']

student_2 = Student('Billy', 'Nanington', 'Male')
student_2.add_courses('Введение в программирование')
student_2.courses_in_progress += ['Python']
student_2.courses_in_progress += ['Git']

lecturer_1 = Lecturer('Aizek', 'Epsilon')
lecturer_1.courses_attached += ['Python']
student_1.rate_lecturer(lecturer_1, 'Python', 10 )
student_2.rate_lecturer(lecturer_1, 'Python', 9 )
student_1.rate_lecturer(lecturer_1, 'Python', 8 )
print(lecturer_1)

lecturer_2 = Lecturer('Ilon', 'Mask')
lecturer_2.courses_attached += ['Python']
lecturer_2.courses_attached += ['Git']
student_1.rate_lecturer(lecturer_2, 'Python', 10 )
student_2.rate_lecturer(lecturer_2, 'Python', 9 )
student_1.rate_lecturer(lecturer_2, 'Git', 10 )
student_2.rate_lecturer(lecturer_2, 'Git', 9 )
student_1.rate_lecturer(lecturer_2, 'Python', 8 )
student_2.rate_lecturer(lecturer_2, 'Python', 7 )
print(lecturer_2)

print(lecturer_1.comparison(lecturer_2))

reviewer_1 = Reviewer('Jimmy', 'Neutron')
reviewer_1.courses_attached += ['Python']
reviewer_1.rate_hw(student_1, 'Python', 10)
reviewer_1.rate_hw(student_1, 'Python', 9)
reviewer_1.rate_hw(student_1, 'Python', 8)
print(reviewer_1)

reviewer_2 = Reviewer('Jimmy', 'Cool')
reviewer_2.courses_attached += ['Python']
reviewer_2.courses_attached += ['Git']
reviewer_2.rate_hw(student_2, 'Python', 10)
reviewer_2.rate_hw(student_2, 'Git', 10)
reviewer_2.rate_hw(student_2, 'Python', 9)
reviewer_2.rate_hw(student_2, 'Git', 9)
reviewer_2.rate_hw(student_2, 'Python', 8)
reviewer_2.rate_hw(student_2, 'Git', 8)
print(reviewer_2)

print(student_1)
print(student_2)
print(student_1.comparison(student_2))

middle_grades_of_students(list_of_students, 'Python')

middle_grades_of_lecturers(list_of_lecturers, 'Python')