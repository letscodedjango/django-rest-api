from django.test import TestCase
from app.calc import add, sub


class CalcTests(TestCase):

    # the test function must start with test_ always else django will not run that
    def test_add_numbers(self):
        """Test that the function defined to add two numbers are working correctly or not"""
        self.assertTrue(add())
    def test_subtract_numbers(self):
        """ Test that function will subtract two numbers"""
        self.assertEqual(sub(20, 10), 10)
