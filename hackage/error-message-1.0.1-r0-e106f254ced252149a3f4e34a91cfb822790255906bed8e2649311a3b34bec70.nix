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
      specVersion = "1.6";
      identifier = { name = "error-message"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Gregory Crosswhite";
      maintainer = "gcross@phys.washington.edu";
      author = "Gregory Crosswhite";
      homepage = "http://github.com/gcross/error-message";
      url = "";
      synopsis = "Composable error messages.";
      description = "This philosophy behind this package is that it is often better to find\nout all of the errors that have occured in a computation and report them\nsimultaneously, rather than aborting as soon as the first error is\nencountered.  Towards this end, this module supplies a type of\n/combinable error messages/ so that all of the errors from subcomputations\ncan be gathered and presented together.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
          (hsPkgs."InfixApplicative" or (errorHandler.buildDepError "InfixApplicative"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
        ];
        buildable = true;
      };
    };
  }