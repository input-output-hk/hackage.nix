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
      specVersion = "1.24";
      identifier = { name = "nominal"; version = "0.3.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) 2016-2022 Peter Selinger";
      maintainer = "selinger@mathstat.dal.ca";
      author = "Peter Selinger";
      homepage = "https://bitbucket.org/selinger/nominal/";
      url = "";
      synopsis = "Binders and alpha-equivalence made easy";
      description = "An efficient and easy-to-use library for defining datatypes with\nbinders, and automatically handling bound variables and\nalpha-equivalence. It is based on Gabbay and Pitts's theory of\nnominal sets.\n\nSee \"Nominal\" for an overview and the full documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }