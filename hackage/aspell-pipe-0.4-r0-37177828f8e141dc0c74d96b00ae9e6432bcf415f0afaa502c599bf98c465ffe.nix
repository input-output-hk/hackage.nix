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
      specVersion = "1.18";
      identifier = { name = "aspell-pipe"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "2017 Jonathan Daugherty";
      maintainer = "jtd@galois.com";
      author = "Jonathan Daugherty";
      homepage = "";
      url = "";
      synopsis = "Pipe-based interface to the Aspell program";
      description = "A pipe-based interface to the Aspell program (no\ndynamic linking required).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }