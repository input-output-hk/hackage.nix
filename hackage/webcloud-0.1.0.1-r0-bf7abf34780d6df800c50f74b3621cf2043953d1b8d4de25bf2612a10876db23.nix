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
      identifier = { name = "webcloud"; version = "0.1.0.1"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "maxwellswadling@gmail.com";
      author = "Maxwell Swadling";
      homepage = "";
      url = "";
      synopsis = "Turn an optparse-applicative program into a CGI program!";
      description = "Automatically generate a web interface for your existing\noptparse-applicative command line applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "testcloud" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."webcloud" or (errorHandler.buildDepError "webcloud"))
            ];
          buildable = true;
          };
        };
      };
    }