let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"));
        libs = (pkgs.lib).optionals (flags.pkgconfig) [
          (pkgs."cmark-gfm" or (sysDepError "cmark-gfm"))
          (pkgs."cmark-gfm-extensions" or (sysDepError "cmark-gfm-extensions"))
          ];
        };
      tests = {
        "test-cmark-gfm" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmark-gfm" or (buildDepError "cmark-gfm"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        };
      benchmarks = {
        "bench-cmark-gfm" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."cmark-gfm" or (buildDepError "cmark-gfm"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."sundown" or (buildDepError "sundown"))
            (hsPkgs."cheapskate" or (buildDepError "cheapskate"))
            (hsPkgs."markdown" or (buildDepError "markdown"))
            (hsPkgs."discount" or (buildDepError "discount"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            ];
          };
        };
      };
    }