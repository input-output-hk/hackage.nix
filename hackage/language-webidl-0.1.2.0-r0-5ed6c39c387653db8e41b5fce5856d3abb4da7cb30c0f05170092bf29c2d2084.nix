{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "language-webidl";
        version = "0.1.2.0";
      };
      license = "MIT";
      copyright = "2016, Zhen Zhang";
      maintainer = "Zhen Zhang <izgzhen@gmail.com>";
      author = "Zhen Zhang <izgzhen@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Parser and Pretty Printer for WebIDL";
      description = "It is intended to replace the old package\n<https://hackage.haskell.org/package/webidl>.\nThis new package is written with parsec and wl-pprint.";
      buildType = "Simple";
    };
    components = {
      "language-webidl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.wl-pprint)
        ];
      };
    };
  }