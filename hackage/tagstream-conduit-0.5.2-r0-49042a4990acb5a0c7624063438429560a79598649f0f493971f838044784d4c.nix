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
      specVersion = "1.8";
      identifier = { name = "tagstream-conduit"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yi.codeplayer@gmail.com";
      author = "yihuang";
      homepage = "http://github.com/yihuang/tagstream-conduit";
      url = "";
      synopsis = "streamlined html tag parser";
      description = "Tag-stream is a library for parsing HTML//XML to a token stream.\nIt can parse unstructured and malformed HTML from the web.\nIt also provides an Enumeratee which can parse streamline html, which means it consumes constant memory.\nYou can start from the `tests/Tests.hs` module to see what it can do.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."blaze-builder-conduit" or (errorHandler.buildDepError "blaze-builder-conduit"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."tagstream-conduit" or (errorHandler.buildDepError "tagstream-conduit"))
            ];
          buildable = true;
          };
        };
      };
    }