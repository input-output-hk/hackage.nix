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
      identifier = { name = "bencoding-lens"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2021-2022, Joseph Morag";
      maintainer = "Joseph Morag <jm@josephmorag.com>";
      author = "Joseph Morag";
      homepage = "https://github.com/jmorag/bencoding-lens";
      url = "";
      synopsis = "Lenses for bencoded data.";
      description = "A port of lens-aeson for bencoding.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bencoding" or (errorHandler.buildDepError "bencoding"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      tests = {
        "bencoding-lens-torrent-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."bencoding" or (errorHandler.buildDepError "bencoding"))
            (hsPkgs."bencoding-lens" or (errorHandler.buildDepError "bencoding-lens"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }