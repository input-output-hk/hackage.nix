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
      specVersion = "0";
      identifier = { name = "web-mongrel2"; version = "0.0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Clint Moore <cmoore@wamboli.com>";
      author = "Clint Moore";
      homepage = "http://github.com/cmoore/web-mongrel2";
      url = "";
      synopsis = "Bindings for the Mongrel2 web server.";
      description = "A simple handler API for Mongrel2.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."system-uuid" or (errorHandler.buildDepError "system-uuid"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."zeromq-haskell" or (errorHandler.buildDepError "zeromq-haskell"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
          ];
        buildable = true;
        };
      };
    }