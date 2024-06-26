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
      identifier = { name = "aip-version"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2024 Tony Morris";
      maintainer = "Tony Morris <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Tony Morris <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://gitlab.com/system-f/code/aip-version";
      url = "";
      synopsis = "Version of AIP documents";
      description = "<<https://system-f.gitlab.io/logo/systemf-450x450.jpg>>\n\nZipping with alignment";
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