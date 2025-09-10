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
      identifier = { name = "happstack-hsp"; version = "7.3.7.8"; };
      license = "BSD-3-Clause";
      copyright = "2011-2015 Jeremy Shaw";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Jeremy Shaw";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "Support for using HSP templates in Happstack";
      description = "Happstack is a web application framework. HSP is an XML templating solution. This package makes it easy to use HSP templates with Happstack.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
          (hsPkgs."hsp" or (errorHandler.buildDepError "hsp"))
          (hsPkgs."hsx2hs" or (errorHandler.buildDepError "hsx2hs"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }