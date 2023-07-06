import unittest
from game import Rungame

class TestGame(unittest.TestCase):
    def test(self):
        resultado = Rungame(pos=1)
        self.assertEqual(resultado, 1)

if __name__ == '__main__':
    unittest.main()