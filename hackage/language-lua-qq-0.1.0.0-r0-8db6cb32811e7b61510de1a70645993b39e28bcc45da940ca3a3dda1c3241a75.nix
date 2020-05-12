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
      identifier = { name = "language-lua-qq"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 (c) Hiromi ISHII";
      maintainer = "konn.jinro _at_ gmail.com";
      author = "Hiromi ISHII";
      homepage = "http://github.com/konn/language-lua-qq#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."language-lua" or (errorHandler.buildDepError "language-lua"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "language-lua-qq-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-lua-qq" or (errorHandler.buildDepError "language-lua-qq"))
            ];
          buildable = true;
          };
        };
      };
    }