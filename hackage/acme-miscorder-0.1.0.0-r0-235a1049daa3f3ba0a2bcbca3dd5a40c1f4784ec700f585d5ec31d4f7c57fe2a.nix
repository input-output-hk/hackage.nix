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
      identifier = { name = "acme-miscorder"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "© 2015 ARJANEN Loïc Jean David";
      maintainer = "arjanen.loic@gmail.com";
      author = "ARJANEN Loïc Jean David";
      homepage = "";
      url = "";
      synopsis = "Miscellaneous newtypes for orderings of discutable use.";
      description = "A collection of newtypes with Ord and Eq instances with peculiar behaviours.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
    };
  }