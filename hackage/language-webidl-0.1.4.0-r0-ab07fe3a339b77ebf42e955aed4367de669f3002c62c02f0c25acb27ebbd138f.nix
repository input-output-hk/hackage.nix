{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "language-webidl";
        version = "0.1.4.0";
      };
      license = "MIT";
      copyright = "2016, Zhen Zhang";
      maintainer = "Zhen Zhang <izgzhen@gmail.com>";
      author = "Zhen Zhang <izgzhen@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Parser and Pretty Printer for WebIDL";
      description = "Written with parsec and wl-pprint.\nSee <http://www.w3.org/TR/WebIDL/> for reference.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.wl-pprint)
        ];
      };
      tests = {
        "language-webidl-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.language-webidl)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }