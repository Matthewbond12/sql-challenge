SQL Challenge - Bootcamp Module #9

Introduction:

In this challenge, we were tasked with formulating an Entity Relationship diagram. We were then tasked with creating the appropriate table schema with associated primary and foreign keys along with each field's correct data types. Next, we were challenged to create queries to answer a variety of questions testing our knowledge of multi-table joins,

Data Modeling (Entity Relationship Diagram):

Reviewed the attached six excel documents to understand table schema for each. Then I determined the data type for each field. Finally, I evaluated and diagrammed the relationships between each table schema.

Data Engineering:

After creating the ERD, I begin creating the table schema in PostgreSQL. I designated each field's data type and appropriate character length, while referencing the correct primary and foreign keys for each. Then I imported each of the associated excel documents and ran select all queries to verify tables were created correctly.

Data Analysis:

Finally, I used multi-table joins, aggregation functions as well as foundational querying concepts to generate queries in answer to a dozen different prompts including the below:

List the employee number, last name, first name, sex, and salary of each employee List the first name, last name, and hire date for the employees who were hired in 1986 List the manager of each department along with their department number, department name, employee number, last name, and first name List the department number for each employee along with that employee’s employee number, last name, first name, and department name List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B List each employee in the Sales department, including their employee number, last name, and first name List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

Resources Used:

Composite Key Reference https://www.youtube.com/watch?v=SydCFe5eF4o
