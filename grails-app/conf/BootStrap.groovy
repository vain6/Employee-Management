import com.company.product.Employee

class BootStrap {

    def init = { servletContext ->
		if (Employee.count() == 0) {
			new Employee(firstName: 'John', lastName: 'Doe').save()
		}
    }
    def destroy = {
    }
}
