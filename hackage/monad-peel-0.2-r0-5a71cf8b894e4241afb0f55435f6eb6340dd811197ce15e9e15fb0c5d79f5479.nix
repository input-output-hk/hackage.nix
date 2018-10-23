{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "monad-peel";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Anders Kaseorg, 2015 Sergey Alirzaev";
      maintainer = "Sergey Alirzaev <zl29ah@gmail.com>";
      author = "Anders Kaseorg, Sergey Alirzaev";
      homepage = "http://andersk.mit.edu/haskell/monad-peel/";
      url = "";
      synopsis = "Lift control operations like exception catching through monad transformers";
      description = "This package defines @MonadPeelIO@, a subset of @MonadIO@ into which\ngeneric control operations such as @catch@ can be lifted from @IO@.\nInstances are based on monad transformers in @MonadTransPeel@, which\nincludes all standard monad transformers in the @transformers@\nlibrary except @ContT@.  For convenience, it provides a wrapped\nversion of Control.Exception with types generalized from @IO@ to all\nmonads in @MonadPeelIO@.";
      buildType = "Simple";
    };
    components = {
      "monad-peel" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.transformers)
        ];
      };
    };
  }