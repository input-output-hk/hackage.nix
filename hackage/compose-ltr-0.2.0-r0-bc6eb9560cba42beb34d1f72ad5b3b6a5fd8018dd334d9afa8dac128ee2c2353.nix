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
        name = "compose-ltr";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "123.wizek@gmail.com";
      author = "Milán Nagy";
      homepage = "";
      url = "";
      synopsis = "More intuitive, left-to-right function composition.";
      description = "More intuitive, left-to-right function composition.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.compose-ltr)
          ];
        };
      };
    };
  }