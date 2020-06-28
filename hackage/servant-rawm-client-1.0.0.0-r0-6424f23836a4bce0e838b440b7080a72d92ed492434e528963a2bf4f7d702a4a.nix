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
      identifier = { name = "servant-rawm-client"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com\n, nil.krjst@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/servant-rawm";
      url = "";
      synopsis = "The client implementation of servant-rawm.";
      description = "Please see <https://github.com/cdepillabout/servant-rawm#readme README.md>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant-rawm" or (errorHandler.buildDepError "servant-rawm"))
          (hsPkgs."servant-client-core" or (errorHandler.buildDepError "servant-client-core"))
          ];
        buildable = true;
        };
      };
    }