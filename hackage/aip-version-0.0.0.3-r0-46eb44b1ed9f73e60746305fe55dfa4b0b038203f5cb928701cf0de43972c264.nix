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
      identifier = { name = "aip-version"; version = "0.0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2024 Tony Morris";
      maintainer = "Tony Morris <nɐ˙ɯoɔ˙ɟɯǝʇsʎs@ǝɹɐʍʇɟos>";
      author = "Tony Morris <nɐ˙ɯoɔ˙ɟɯǝʇsʎs@ǝɹɐʍʇɟos>";
      homepage = "https://gitlab.com/aip-version/aip-version";
      url = "";
      synopsis = "Version of AIP documents";
      description = "<<https://logo.systemf.com.au/systemf-450x450.jpg>>\n\nA standalone executable to report the version of each AIP document";
      buildType = "Simple";
    };
    components = {
      exes = {
        "aip-version" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          ];
          buildable = true;
        };
      };
    };
  }