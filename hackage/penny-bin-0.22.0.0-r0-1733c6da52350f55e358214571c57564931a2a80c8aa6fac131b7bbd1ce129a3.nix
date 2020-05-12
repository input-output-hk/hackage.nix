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
    flags = {
      debug = false;
      build-penny = true;
      build-selloff = true;
      build-diff = true;
      build-reprint = true;
      build-reconcile = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "penny-bin"; version = "0.22.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2012-2013 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/penny";
      url = "";
      synopsis = "Deprecated - use penny package instead";
      description = "This package is now deprecated.  Use the penny package instead.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "penny" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."penny-lib" or (errorHandler.buildDepError "penny-lib"))
            ];
          buildable = if !flags.build-penny then false else true;
          };
        "penny-selloff" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."penny-lib" or (errorHandler.buildDepError "penny-lib"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."multiarg" or (errorHandler.buildDepError "multiarg"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = if !flags.build-selloff then false else true;
          };
        "penny-diff" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."penny-lib" or (errorHandler.buildDepError "penny-lib"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."multiarg" or (errorHandler.buildDepError "multiarg"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            ];
          buildable = if !flags.build-diff then false else true;
          };
        "penny-reprint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."multiarg" or (errorHandler.buildDepError "multiarg"))
            (hsPkgs."penny-lib" or (errorHandler.buildDepError "penny-lib"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if !flags.build-reprint then false else true;
          };
        "penny-reconcile" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."penny-lib" or (errorHandler.buildDepError "penny-lib"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."multiarg" or (errorHandler.buildDepError "multiarg"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            ];
          buildable = if !flags.build-reconcile then false else true;
          };
        };
      };
    }