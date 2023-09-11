import pytest
import fonctions as f
def test_1():
	assert f.puissance(2, 3) == 8
	assert f.puissance(2, 2) == 4
def test_2():
	assert f.puissance(-2, 3) == -8
	assert f.puissance(2, -2) == 0.25
def test_3():
	assert f.puissance(8, 0) == 1
	assert f.puissance(8, -0) == 1
	assert f.puissance(-8, 0) == -1
	assert f.puissance(-8, -0) == -1
def test_4():
	assert f.puissance(0, 2) == 0
	assert f.puissance(-0, 3) == 0
def test_5():
	assert f.puissance(0, 0) == 1
def test_type_error():
    with pytest.raises(TypeError):
        f.puissance(0, -3)
        f.puissance(-0, -3)
def test_value_error():
	with pytest.raises(TypeError):
		f.puissance(1.1, 3)
		f.puissance(2, 3.3)
