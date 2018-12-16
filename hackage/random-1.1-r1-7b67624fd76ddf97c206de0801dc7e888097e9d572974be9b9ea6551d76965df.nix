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
      specVersion = "1.8";
      identifier = {
        name = "random";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "carter dot schonwald at google mail dot com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "random number library";
      description = "This package provides a basic random number generation\nlibrary, including the ability to split random number\ngenerators.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
        ];
      };
      tests = {
        "T7936" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.random)
          ];
        };
        "TestRandomRs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.random)
          ];
        };
        "TestRandomIOs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.random)
          ];
        };
      };
    };
  }