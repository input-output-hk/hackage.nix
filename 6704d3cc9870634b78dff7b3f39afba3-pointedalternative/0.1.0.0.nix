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
      specVersion = "1.10";
      identifier = {
        name = "pointedalternative";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2016 Gurkenglas";
      maintainer = "gurkenglas@hotmail.de";
      author = "Gurkenglas";
      homepage = "http://ircbrowse.net/browse/haskell?q=manyLazy";
      url = "";
      synopsis = "Alternative done right";
      description = "These combinators give an alternative approach to the Control.Monad.Loops library.";
      buildType = "Simple";
    };
    components = {
      "pointedalternative" = {
        depends  = [
          (hsPkgs.transformers)
          (hsPkgs.semigroups)
          (hsPkgs.mtl)
          (hsPkgs.base)
        ];
      };
    };
  }