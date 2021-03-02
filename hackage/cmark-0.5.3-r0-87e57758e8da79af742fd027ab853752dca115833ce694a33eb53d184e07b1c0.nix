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
    flags = { pkgconfig = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "cmark"; version = "0.5.3"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2015 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "https://github.com/jgm/commonmark-hs";
      url = "";
      synopsis = "Fast, accurate CommonMark (Markdown) parser and renderer";
      description = "This package provides Haskell bindings for\n<https://github.com/jgm/cmark libcmark>, the reference\nparser for <http://commonmark.org CommonMark>, a fully\nspecified variant of Markdown. It includes sources for\nlibcmark (0.26.0) and does not require prior installation of the\nC library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        pkgconfig = (pkgs.lib).optional (flags.pkgconfig) (pkgconfPkgs."libcmark" or (errorHandler.pkgConfDepError "libcmark"));
        buildable = true;
        };
      tests = {
        "test-cmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmark" or (errorHandler.buildDepError "cmark"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-cmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."cmark" or (errorHandler.buildDepError "cmark"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."sundown" or (errorHandler.buildDepError "sundown"))
            (hsPkgs."cheapskate" or (errorHandler.buildDepError "cheapskate"))
            (hsPkgs."markdown" or (errorHandler.buildDepError "markdown"))
            (hsPkgs."discount" or (errorHandler.buildDepError "discount"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            ];
          buildable = true;
          };
        };
      };
    }