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
      specVersion = "1.6";
      identifier = {
        name = "monadio-unwrappable";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2012 The University of Auckland";
      maintainer = "ak.miller@auckland.ac.nz";
      author = "Andrew Miller";
      homepage = "";
      url = "";
      synopsis = "Reversibly allow monad transformer stacks to run in IO";
      description = "Provides MonadIOUnwrappable instances for monad transformer stacks that can be run in the IO monad, with the result converted back to the monadic type. This package also includes some utilities built using MonadIOUnwrappable, such as a bracket implementation that works with MonadIO even on stacks containing one or more ErrorT transformers";
      buildType = "Simple";
    };
    components = {
      "monadio-unwrappable" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.monads-tf)
          (hsPkgs.transformers)
        ];
      };
    };
  }