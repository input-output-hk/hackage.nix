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
      identifier = { name = "WebCont"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "amsay@amsay.net";
      author = "Sam Anklesaria";
      homepage = "http://patch-tag.com/r/salazar/webconts/snapshot/current/content/pretty";
      url = "";
      synopsis = "Continuation based web programming for Happstack";
      description = "WebCont allows continuation based web programming to be integrated with Happstack, allowing\nstep based interfaces along with traditional handlers. It is based on <http://gist.github.com/260052>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
          (hsPkgs."happstack-state" or (errorHandler.buildDepError "happstack-state"))
          (hsPkgs."happstack-util" or (errorHandler.buildDepError "happstack-util"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."concatenative" or (errorHandler.buildDepError "concatenative"))
          (hsPkgs."formlets" or (errorHandler.buildDepError "formlets"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          (hsPkgs."applicative-extras" or (errorHandler.buildDepError "applicative-extras"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }