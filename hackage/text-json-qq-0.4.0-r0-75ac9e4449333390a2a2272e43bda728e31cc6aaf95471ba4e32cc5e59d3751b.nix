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
      identifier = { name = "text-json-qq"; version = "0.4.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "oscar.finnsson@gmail.com";
      author = "Oscar Finnsson";
      homepage = "http://github.com/finnsson/text-json-qq";
      url = "";
      synopsis = "Json Quasiquatation for Haskell.";
      description = "@text-json-qq@ provides json quasiquatation for Haskell.\n\nThis package expose the function @jsonQQ@ that compile time converts json code into a @Text.JSON.JSValue@.\n@jsonQQ@ got the signature\n\n> jsonQQ :: QuasiQuoter.\n\nConsult documentation in the module @Text.JSON.QQ@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."json-qq" or (errorHandler.buildDepError "json-qq"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
        ];
        buildable = true;
      };
    };
  }