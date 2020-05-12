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
      identifier = { name = "sugarhaskell"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "seba at informatik uni-marburg de";
      author = "Sebastian Erdweg";
      homepage = "http://sugarj.org";
      url = "";
      synopsis = "Library-based syntactic extensibility for Haskell";
      description = "SugarHaskell is a syntactically extensible variant of Haskell.\nSugarHaskell organizes language extensions in regular Haskell\nmodules, whose import activates the language extensions at\nhand. The article \"Layout-sensitive Language Extensibility\nWith SugarHaskell\" presented at the Haskell Symposium 2012\ndescribes details of SugarHaskell and is available online at\n<http://sugarj.org/sugarhaskell.pdf>.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "sugarhaskell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        "sugarj" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }