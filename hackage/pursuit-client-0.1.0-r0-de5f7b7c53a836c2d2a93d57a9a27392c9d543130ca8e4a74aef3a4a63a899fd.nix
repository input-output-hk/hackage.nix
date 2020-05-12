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
      identifier = { name = "pursuit-client"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Gil Mizrahi";
      maintainer = "soupiral@gmail.com";
      author = "Gil Mizrahi";
      homepage = "https://github.com/soupi/pursuit-client";
      url = "";
      synopsis = "A cli client for pursuit";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."taggy-lens" or (errorHandler.buildDepError "taggy-lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "pursuit-search" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pursuit-client" or (errorHandler.buildDepError "pursuit-client"))
            ];
          buildable = true;
          };
        };
      };
    }