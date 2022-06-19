{ lib
, fetchFromGitHub
, python3Packages
}:

python3Packages.buildPythonApplication rec  {
  pname = "envycontrol";
  version = "v2.1.1";

  src = fetchFromGitHub {
    owner = "geminis3";
    repo = "envycontrol";
    rev = "9d0905b05537d7ec640c0f5f3404c50f7a6f18f7";
    sha256 = "sha256-u+B/KE5SwnMAN0Tn4ctJi+L54y44RCXUaEAkjG1xPuM=";
  };

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

