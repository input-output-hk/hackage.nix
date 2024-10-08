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
      identifier = { name = "fn-extra"; version = "0.3.0.0"; };
      license = "ISC";
      copyright = "2016 Daniel Patterson";
      maintainer = "Daniel Patterson <dbp@dbpmail.net>";
      author = "Daniel Patterson <dbp@dbpmail.net>";
      homepage = "http://github.com/dbp/fn#readme";
      url = "";
      synopsis = "Extras for Fn, a functional web framework.";
      description = "Please see README.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
          (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-util" or (errorHandler.buildDepError "wai-util"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."digestive-functors" or (errorHandler.buildDepError "digestive-functors"))
          (hsPkgs."fn" or (errorHandler.buildDepError "fn"))
        ];
        buildable = true;
      };
    };
  }