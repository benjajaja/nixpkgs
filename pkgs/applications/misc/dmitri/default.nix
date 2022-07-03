{ lib, fetchFromGitHub, rustPlatform, cmake, pkg-config, freetype, expat }:

rustPlatform.buildRustPackage rec {
  pname = "dmitri";
  version = "0.1.2";

  src = fetchFromGitHub {
    owner = "benjajaja";
    repo = pname;
    rev = version;
    sha256 = "sha256-eMpcIVNKq+cClz6mX8zkVEvjgYy/nhmL6gVRo2ksMrc=";
  };

  nativeBuildInputs = [
    pkg-config
    cmake
  ];

  buildInputs = [
    freetype
    expat
  ];

  cargoSha256 = "sha256-NlhqTQuJ2XwgXojz+J02Oi4icF5uvKBOWRr1pKajpbk=";

  meta = with lib; {
    description = "Fast and minimal application launcher, like dmenu";
    homepage = "https://github.com/benjajaja/dmitri";
    changelog = "https://github.com/curlpipe/dmitri/releases/tag/${version}";
    license = licenses.gpl2Only;
    maintainers = with maintainers; [];
  };
}
