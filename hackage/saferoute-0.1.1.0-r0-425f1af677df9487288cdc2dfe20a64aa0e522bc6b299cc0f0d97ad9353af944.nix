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
    flags = { blaze = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "saferoute"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2014, Peter Harpending";
      maintainer = "Peter Harpending <pharpend2@gmail.com>";
      author = "Peter Harpending";
      homepage = "";
      url = "";
      synopsis = "A simple type-safe routing library.";
      description = "saferoute is a type-safe routing library for web applications.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optional (flags.blaze) (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"));
        buildable = true;
      };
    };
  }