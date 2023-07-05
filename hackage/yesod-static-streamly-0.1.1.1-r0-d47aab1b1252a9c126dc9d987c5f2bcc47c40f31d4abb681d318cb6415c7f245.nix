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
      specVersion = "3.0";
      identifier = { name = "yesod-static-streamly"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mattm.github@gmail.com";
      author = "Matthew Mosior";
      homepage = "";
      url = "";
      synopsis = "A streamly-based library providing performance-focused alternatives for functionality found in yesod-static.";
      description = "API docs and the README are available at https://github.com/Matthew-Mosior/yesod-static-streamly ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."streamly-bytestring" or (errorHandler.buildDepError "streamly-bytestring"))
          (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          ];
        buildable = true;
        };
      tests = {
        "yesod-static-streamly-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yesod-static-streamly" or (errorHandler.buildDepError "yesod-static-streamly"))
            ];
          buildable = true;
          };
        };
      };
    }