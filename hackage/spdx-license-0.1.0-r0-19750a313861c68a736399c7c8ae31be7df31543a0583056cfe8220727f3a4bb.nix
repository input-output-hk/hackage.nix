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
      identifier = { name = "spdx-license"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) poscat 2020";
      maintainer = "poscat <poscat@mail.poscat.moe>";
      author = "poscat";
      homepage = "https://github.com/poscat0x04/spdx-license";
      url = "";
      synopsis = "SPDX license templates";
      description = "Parsing, pretty-printing and rendering of SPDX license templates";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
          ];
        buildable = true;
        };
      tests = {
        "spdx-license-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."spdx-license" or (errorHandler.buildDepError "spdx-license"))
            ];
          buildable = true;
          };
        };
      };
    }