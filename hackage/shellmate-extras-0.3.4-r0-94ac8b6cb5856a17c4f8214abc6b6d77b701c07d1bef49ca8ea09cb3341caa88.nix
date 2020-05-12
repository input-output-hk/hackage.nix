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
      identifier = { name = "shellmate-extras"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "https://github.com/valderman/shellmate";
      url = "";
      synopsis = "Extra functionality for shellmate.";
      description = "HTTP downloads and parsing for various file formats.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
          (hsPkgs."shellmate" or (errorHandler.buildDepError "shellmate"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
        buildable = true;
        };
      };
    }