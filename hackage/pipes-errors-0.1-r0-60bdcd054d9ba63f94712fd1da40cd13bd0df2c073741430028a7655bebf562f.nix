{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pipes-errors"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "j@dannynavarro.net";
      author = "Danny Navarro";
      homepage = "https://github.com/jdnavarro/pipes-errors";
      url = "";
      synopsis = "Integration between pipes and errors";
      description = "This package provides orphan `MFunctor` instances for `EitherT` and\n`EitherRT`, in addition to functions for base monad manipulation in the\npresence of `Proxy` monad transformers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
        ];
        buildable = true;
      };
    };
  }