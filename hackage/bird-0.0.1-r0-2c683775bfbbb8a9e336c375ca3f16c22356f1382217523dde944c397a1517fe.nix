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
      specVersion = "1.2";
      identifier = { name = "bird"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Parker, Matt <moonmaster9000@gmail.com>";
      author = "Parker, Matt";
      homepage = "http://github.com/moonmaster9000/bird";
      url = "";
      synopsis = "A simple, sinatra-inspired web framework.";
      description = "Bird is a hack-compatible framework for simple websites.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hack" or (errorHandler.buildDepError "hack"))
          (hsPkgs."hyena" or (errorHandler.buildDepError "hyena"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          ];
        buildable = true;
        };
      exes = { "bird" = { buildable = true; }; };
      };
    }