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
      specVersion = "1.8";
      identifier = { name = "simplest-sqlite"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "YoshikuniJujo <PAF01143@nifty.ne.jp>";
      author = "YoshikuniJujo <PAF01143@nifty.ne.jp>";
      homepage = "comming soon";
      url = "";
      synopsis = "Simplest SQLite3 binding";
      description = "see sample code in samples/";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."exception-hierarchy" or (errorHandler.buildDepError "exception-hierarchy"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        libs = [ (pkgs."sqlite3" or (errorHandler.sysDepError "sqlite3")) ];
        buildable = true;
        };
      };
    }