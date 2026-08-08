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
      identifier = { name = "pinterest-url-normalizer"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2026 SavePinner";
      maintainer = "jiankn@users.noreply.github.com";
      author = "SavePinner";
      homepage = "https://savepinner.com/";
      url = "";
      synopsis = "Parse and normalize Pinterest URLs without network requests";
      description = "A small, zero-I/O library for classifying and normalizing Pinterest Pin,\nshort, profile, board, and Ideas URLs. It uses an exact host allow list and\nrejects HTTP URLs, credentials, non-standard ports, and lookalike domains.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
        ];
        buildable = true;
      };
      tests = {
        "pinterest-url-normalizer-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pinterest-url-normalizer" or (errorHandler.buildDepError "pinterest-url-normalizer"))
          ];
          buildable = true;
        };
      };
    };
  }