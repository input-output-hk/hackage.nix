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
      identifier = { name = "stmcontrol"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "martin.sulzmann@gmail.com";
      author = "Martin Sulzmann";
      homepage = "http://sulzmann.blogspot.com/2008/12/stm-with-control-communication-for.html";
      url = "";
      synopsis = "Control communication among retrying transactions";
      description = "Control communication among retrying transactions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }