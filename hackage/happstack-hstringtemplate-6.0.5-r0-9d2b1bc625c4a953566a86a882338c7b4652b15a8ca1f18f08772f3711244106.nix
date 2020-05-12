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
      identifier = { name = "happstack-hstringtemplate"; version = "6.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Jeremy Shaw";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "Support for using HStringTemplate in Happstack";
      description = "Happstack is a web application framework. HStringTemplate is a templating solution.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }