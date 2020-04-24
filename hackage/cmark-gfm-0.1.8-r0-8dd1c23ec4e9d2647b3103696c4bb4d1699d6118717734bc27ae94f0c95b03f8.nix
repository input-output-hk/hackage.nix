{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { pkgconfig = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "cmark-gfm"; version = "0.1.8"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2015--17 John MacFarlane, (C) 2017--19 Ashe Connor";
      maintainer = "kivikakk@github.com";
      author = "Ashe Connor";
      homepage = "https://github.com/kivikakk/cmark-gfm-hs";
      url = "";
      synopsis = "Fast, accurate GitHub Flavored Markdown parser and renderer";
      description = "This package provides Haskell bindings for\n<https://github.com/github/cmark-gfm libcmark-gfm>, the reference\nparser for <https://github.github.com/gfm/ GitHub Flavored Markdown>, a fully\nspecified variant of Markdown. It includes sources for\nlibcmark-gfm (0.28.3.gfm.20) and does not require prior installation of the\nC library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"));
        libs = (pkgs.lib).optionals (flags.pkgconfig) [
          (pkgs."cmark-gfm" or ((hsPkgs.pkgs-errors).sysDepError "cmark-gfm"))
          (pkgs."cmark-gfm-extensions" or ((hsPkgs.pkgs-errors).sysDepError "cmark-gfm-extensions"))
          ];
        buildable = true;
        };
      tests = {
        "test-cmark-gfm" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmark-gfm" or ((hsPkgs.pkgs-errors).buildDepError "cmark-gfm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-cmark-gfm" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."cmark-gfm" or ((hsPkgs.pkgs-errors).buildDepError "cmark-gfm"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."sundown" or ((hsPkgs.pkgs-errors).buildDepError "sundown"))
            (hsPkgs."cheapskate" or ((hsPkgs.pkgs-errors).buildDepError "cheapskate"))
            (hsPkgs."markdown" or ((hsPkgs.pkgs-errors).buildDepError "markdown"))
            (hsPkgs."discount" or ((hsPkgs.pkgs-errors).buildDepError "discount"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            ];
          buildable = true;
          };
        };
      };
    }