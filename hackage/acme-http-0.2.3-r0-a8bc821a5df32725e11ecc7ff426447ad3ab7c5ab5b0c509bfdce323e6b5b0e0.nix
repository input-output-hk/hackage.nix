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
      identifier = { name = "acme-http"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "2012 Jeremy Shaw, SeeReason Partners LLC";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.happstack.com";
      url = "";
      synopsis = "fastest Haskell PONG server in the world";
      description = "winning the PONG benchmark at all costs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      exes = {
        "pong" = { buildable = true; };
        "http-echo" = { buildable = true; };
        };
      };
    }