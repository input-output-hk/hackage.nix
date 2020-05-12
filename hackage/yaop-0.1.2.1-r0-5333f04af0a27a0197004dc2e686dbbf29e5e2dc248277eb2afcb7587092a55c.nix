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
      identifier = { name = "yaop"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eugene Smolanka <esmolanka@gmail.com>";
      author = "Eugene Smolanka <esmolanka@gmail.com>";
      homepage = "https://github.com/esmolanka/yaop";
      url = "";
      synopsis = "Yet another option parser";
      description = "A simple wrapper over the standard System.Console.GetOpt to make options\ndefining more convenient.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }