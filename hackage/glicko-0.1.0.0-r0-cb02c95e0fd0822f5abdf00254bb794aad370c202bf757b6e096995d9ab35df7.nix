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
        name = "glicko";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "prillan91@gmail.com";
      author = "Rasmus Précenth";
      homepage = "";
      url = "";
      synopsis = "Haskell implementation of Glicko-2";
      description = "Implementation of the rating algorithm Glicko-2 by Professor Mark E. Glickman\n<http://glicko.net/glicko/glicko2.pdf>\n\nFor more info, see <https://github.com/Prillan/haskell-glicko>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.lens)
          (hsPkgs.parallel)
          (hsPkgs.statistics)
        ];
      };
      tests = {
        "glicko-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.glicko)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }