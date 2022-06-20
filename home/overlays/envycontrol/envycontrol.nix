{ lib
, fetchFromGitHub
, python3Packages
, envycontrol
}:

python3Packages.buildPythonApplication rec  {
  pname = "envycontrol";
  version = "v2.1.1";

  src = envycontrol;

  # No tests
  doCheck = false;

  pythonImportsCheck = [ "envycontrol" ];

  meta = with lib; {
    homepage = "https://github.com/geminis3/envycontrol";
    description = "Easy GPU switching for Nvidia Optimus laptops under Linux";
    license = licenses.mit;
    platforms = platforms.linux;
    maintainers = with maintainers; [ helium18 ];
  };
}

