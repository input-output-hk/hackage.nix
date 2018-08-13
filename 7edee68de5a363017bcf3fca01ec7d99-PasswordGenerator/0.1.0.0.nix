{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "PasswordGenerator";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "denisovenator@gmail.com";
      author = "Victor Denisov";
      homepage = "https://github.com/VictorDenisov/PasswordGenerator";
      url = "";
      synopsis = "Simple library for generating passwords";
      description = "Simple library for generating passwords.";
      buildType = "Simple";
    };
    components = {
      "PasswordGenerator" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }