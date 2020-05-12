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
      identifier = { name = "mecab"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "http://github.com/tanakh/hsmecab";
      url = "";
      synopsis = "A Haskell binding to MeCab";
      description = "A Haskell binding to MeCab <http://mecab.sourceforge.net/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        libs = [ (pkgs."mecab" or (errorHandler.sysDepError "mecab")) ];
        buildable = true;
        };
      };
    }