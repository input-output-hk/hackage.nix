{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "acme-lolcat";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2013–2015 Antonio Nikishaev";
      maintainer = "Antonio Nikishaev <me@lelf.lu>";
      author = "Antonio Nikishaev <me@lelf.lu>";
      homepage = "https://github.com/llelf/acme-lolcat";
      url = "";
      synopsis = "LOLSPEAK translator";
      description = "LOLSPEAK translator";
      buildType = "Simple";
    };
    components = {
      "acme-lolcat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.text)
          (hsPkgs.random)
          (hsPkgs.random-shuffle)
        ];
      };
    };
  }