{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "STMonadTrans";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "josef.svenningsson@gmail.com";
      author = "Josef Svenningsson";
      homepage = "";
      url = "";
      synopsis = "A monad transformer version of the ST monad";
      description = "A monad transformer version of the ST monad\nWarning! This monad transformer should not be used with monads that\ncan contain multiple answers, like the list monad. The reason is that\nthe will be duplicated across the different answers and this cause\nBad Things to happen (such as loss of referential transparency). Safe\nmonads include the monads State, Reader, Writer, Maybe and\ncombinations of their corresponding monad transformers.";
      buildType = "Simple";
    };
    components = {
      "STMonadTrans" = {
        depends  = if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.array)
          ]
          else [ (hsPkgs.base) ];
      };
    };
  }