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
      specVersion = "1.16";
      identifier = { name = "ihaskell-plot"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Sumit Sahrawat <sumit.sahrawat.apm13@itbhu.ac.in>,\nAndrew Gibiansky <andrew.gibiansky@gmail.com>";
      author = "Sumit Sahrawat <sumit.sahrawat.apm13@itbhu.ac.in>";
      homepage = "http://www.github.com/gibiansky/ihaskell";
      url = "";
      synopsis = "IHaskell display instance for Plot (from plot package)";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."classy-prelude" or (errorHandler.buildDepError "classy-prelude"))
          (hsPkgs."plot" or (errorHandler.buildDepError "plot"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ihaskell" or (errorHandler.buildDepError "ihaskell"))
          ];
        buildable = true;
        };
      };
    }