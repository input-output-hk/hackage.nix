{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "th-expand-syns";
        version = "0.4.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell.5wlh@gishpuppy.com";
      author = "Daniel Schüssler";
      homepage = "https://github.com/DanielSchuessler/th-expand-syns";
      url = "";
      synopsis = "Expands type synonyms in Template Haskell ASTs";
      description = "Expands type synonyms in Template Haskell ASTs";
      buildType = "Simple";
    };
    components = {
      "th-expand-syns" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.syb)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "test-th-expand-syns" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.th-expand-syns)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }