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
        res = (f" Имя: {self.name}\n Фамилия: {self.surname}\n"
        f" Средняя оценка за домашние задания: {self.middle_grade()}\n "
        f"Курсы в процессе изучения: {', '.join(self.courses_in_progress)}\n"
        f" Завершенные курсы: {', '.join(self.finished_courses)}")    
        return res

    def middle_grade(self):
        res_1 = []
        res_2 = []
        for grade in self.grades.values():
            result_1 = sum(grade)
            result_2 = len(grade)
            res_1.append(result_1)
            res_2.append(result_2)
            total = format(sum(res_1) / sum(res_2), '.1f')
        return total
            
    def __gt__(self, comp_student):
        if isinstance(comp_student, Student):
            return self.middle_grade() > comp_student.middle_grade()

    def __lt__(self, comp_student):
        if isinstance(comp_student, Student):
            return self.middle_grade() < comp_student.middle_grade()

    def __eq__(self, comp_student):
        if isinstance(comp_student, Student):
            return self.middle_grade() == comp_student.middle_grade()
 
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
        res = (f" Имя: {self.name}\n Фамилия: {self.surname}\n"
        f" Средняя оценка за лекции: {self.middle_grade()}")
        return res

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

    def __gt__(self, comp_lecturer):
        if isinstance(comp_lecturer, Lecturer):
            return self.middle_grade() > comp_lecturer.middle_grade()

    def __lt__(self, comp_lecturer):
        if isinstance(comp_lecturer, Lecturer):
            return self.middle_grade() < comp_lecturer.middle_grade()

    def __eq__(self, comp_lecturer):
        if isinstance(comp_lecturer, Lecturer):
            return self.middle_grade() == comp_lecturer.middle_grade()


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
student_1.rate_lecturer(lecturer_2, 'Python', 10)
student_2.rate_lecturer(lecturer_2, 'Python', 9)
student_2.rate_lecturer(lecturer_2, 'Git', 10)
student_1.rate_lecturer(lecturer_2, 'Python', 8)
student_2.rate_lecturer(lecturer_2, 'Python', 7)
student_2.rate_lecturer(lecturer_2, 'Git', 9)
print(lecturer_2)

print(lecturer_1 > lecturer_2)
print(lecturer_1 < lecturer_2)
print(lecturer_1 == lecturer_2)

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
print(student_1 > student_2)
print(student_1 < student_2)
print(student_1 == student_2)

middle_grades_of_students(list_of_students, 'Python')
middle_grades_of_lecturers(list_of_lecturers, 'Python')