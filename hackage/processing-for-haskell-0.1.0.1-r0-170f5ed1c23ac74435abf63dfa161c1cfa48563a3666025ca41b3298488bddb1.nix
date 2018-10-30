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
        name = "processing-for-haskell";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anton.kholomiov@gmail.com";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/processing-for-haskell";
      url = "";
      synopsis = "Computer graphics for kids and artists with Processing implemented in Haskell.";
      description = "The library implements the Processing language (see <https://processing.org/>). It's an imperative EDSL for graphics and animation.\nIt's very easy and fun to use. There are many books on processing and community is fairly active.\nWe can find the quick start guide and lots of examples in the project repository\non github <https://github.com/anton-k/processing-for-haskell> (see the directory @examples@).\nThere is a tutorial at the project homepage at github: <https://github.com/anton-k/processing-for-haskell>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.transformers)
          (hsPkgs.random)
          (hsPkgs.time)
          (hsPkgs.hsnoise)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUT)
          (hsPkgs.utf8-string)
          (hsPkgs.vector-space)
          (hsPkgs.NumInstances)
        ];
      };
    };
  }