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
    flags = { dev = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "slugger"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2021 Robert W. Pearce";
      maintainer = "Robert W. Pearce <me@robertwpearce.com>";
      author = "Robert W. Pearce <me@robertwpearce.com>";
      homepage = "https://github.com/rpearce/slugger";
      url = "";
      synopsis = "Clean URI slugs for Haskell";
      description = "Convert multi-language text to a US-ASCII, lowercase, hyphenated, URI-friendly \"slug\"";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
        ];
        buildable = true;
      };
      exes = {
        "slugger" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
            (hsPkgs."slugger" or (errorHandler.buildDepError "slugger"))
          ];
          buildable = true;
        };
      };
      tests = {
        "slugger-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
            (hsPkgs."slugger" or (errorHandler.buildDepError "slugger"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }