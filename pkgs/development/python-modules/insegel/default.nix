{ lib, buildPythonPackage, fetchPypi, pygments }:

buildPythonPackage rec {
  pname = "insegel";
  version = "1.3.0rc3";

  src = fetchPypi {
    inherit pname version;
    sha256 = "8dc160560d26c612ab5ba23346c02b5fe94645aab4d162f07735f36805f95407";
  };

  propagatedBuildInputs = [ pygments ];

  # No tests included
  doCheck = false;

  pythonImportsCheck = [
    "insegel"
  ];

  meta = with lib; {
    homepage = "https://github.com/autophagy/insegel";
    description = "A monochrome 2 column Sphinx theme";
    license = licenses.mit;
    maintainers = with maintainers; [ autophagy ];
  };
}
