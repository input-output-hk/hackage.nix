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
        name = "hsbc";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "grogers385@gmail.com";
      author = "George Rogers";
      homepage = "";
      url = "";
      synopsis = "A command line calculator";
      description = "A command line calculator";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsbc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.attoparsec)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }