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
      identifier = { name = "yaop"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eugene Smolanka <smolanka.zhacka@gmail.com>";
      author = "Eugene Smolanka <smolanka.zhacka@gmail.com>";
      homepage = "";
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