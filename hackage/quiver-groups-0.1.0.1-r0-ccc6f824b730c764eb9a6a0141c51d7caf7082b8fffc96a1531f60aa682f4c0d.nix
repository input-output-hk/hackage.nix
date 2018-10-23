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
        name = "quiver-groups";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Group and chunk values within a Quiver";
      description = "Customisable Quiver grouping and chunking functions.";
      buildType = "Simple";
    };
    components = {
      "quiver-groups" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.quiver)
          (hsPkgs.dlist)
        ];
      };
      tests = {
        "properties" = {
          depends  = [
            (hsPkgs.quiver-groups)
            (hsPkgs.base)
            (hsPkgs.quiver)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }