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
      specVersion = "1.2";
      identifier = {
        name = "guess-combinator";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Etienne Laurin <etienne@atnnn.com>";
      author = "Etienne Laurin";
      homepage = "http://code.atnnn.com/project/guess";
      url = "";
      synopsis = "Generate simple combinators given their type";
      description = "Based on De-typechecker: converting from a type to a term\nby <oleg at pobox.com>\nhttp://www.haskell.org/pipermail/haskell/2005-March/015423.html";
      buildType = "Simple";
    };
    components = {
      "guess-combinator" = {
        depends  = [
          (hsPkgs.HList)
          (hsPkgs.base)
        ];
      };
    };
  }