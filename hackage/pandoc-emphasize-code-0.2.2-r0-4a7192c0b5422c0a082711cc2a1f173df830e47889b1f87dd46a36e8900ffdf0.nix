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
        name = "pandoc-emphasize-code";
        version = "0.2.2";
      };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "Oskar Wickström";
      author = "Oskar Wickström";
      homepage = "https://github.com/owickstrom/pandoc-emphasize-code";
      url = "";
      synopsis = "A Pandoc filter for emphasizing code in fenced blocks";
      description = "A Pandoc filter for emphasizing sections of code in fenced blocks.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.unordered-containers)
          (hsPkgs.process)
          (hsPkgs.hashable)
          (hsPkgs.filepath)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.pandoc-types)
          (hsPkgs.lucid)
        ];
      };
      exes = {
        "pandoc-emphasize-code" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pandoc-types)
            (hsPkgs.pandoc-emphasize-code)
          ];
        };
      };
      tests = {
        "filter-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unordered-containers)
            (hsPkgs.pandoc-types)
            (hsPkgs.pandoc-emphasize-code)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-discover)
          ];
        };
      };
    };
  }