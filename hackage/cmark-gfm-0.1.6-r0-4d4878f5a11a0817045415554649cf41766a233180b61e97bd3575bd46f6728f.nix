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
      specVersion = "1.14";
      identifier = { name = "cmark-gfm"; version = "0.1.6"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2015--17 John MacFarlane, (C) 2017 Ashe Connor";
      maintainer = "kivikakk@github.com";
      author = "Ashe Connor";
      homepage = "https://github.com/kivikakk/cmark-gfm-hs";
      url = "";
      synopsis = "Fast, accurate GitHub Flavored Markdown parser and renderer";
      description = "This package provides Haskell bindings for\n<https://github.com/github/cmark libcmark-gfm>, the reference\nparser for <https://github.github.com/gfm/ GitHub Flavored Markdown>, a fully\nspecified variant of Markdown. It includes sources for\nlibcmark-gfm (0.28.0) and does not require prior installation of the\nC library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        libs = (pkgs.lib).optionals (flags.pkgconfig) [
          (pkgs."cmark-gfm" or (errorHandler.sysDepError "cmark-gfm"))
          (pkgs."cmark-gfm-extensions" or (errorHandler.sysDepError "cmark-gfm-extensions"))
          ];
        buildable = true;
        };
      tests = {
        "test-cmark-gfm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmark-gfm" or (errorHandler.buildDepError "cmark-gfm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-cmark-gfm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."cmark-gfm" or (errorHandler.buildDepError "cmark-gfm"))
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