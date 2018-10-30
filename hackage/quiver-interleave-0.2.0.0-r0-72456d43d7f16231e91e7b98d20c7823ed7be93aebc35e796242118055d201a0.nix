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
        name = "quiver-interleave";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Interleave values from multiple Quivers";
      description = "Combine multiple Quivers into one.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.quiver)
        ];
      };
      tests = {
        "interleave-tests" = {
          depends  = [
            (hsPkgs.quiver-interleave)
            (hsPkgs.base)
            (hsPkgs.quiver)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }