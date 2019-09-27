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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "diagrams-haddock"; version = "0.2.2.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "http://projects.haskell.org/diagrams/";
      url = "";
      synopsis = "Preprocessor for embedding diagrams in Haddock documentation";
      description = "diagrams-haddock is a tool for compiling embedded inline\ndiagrams code in Haddock documentation, for an\neasy way to spice up your documentation with\ndiagrams.  Just create some diagrams code using\nspecial markup, run diagrams-haddock, and ensure\nthe resulting image files are installed along\nwith your documentation.  For complete\ndocumentation and examples, see\n<https://github.com/diagrams/diagrams-haddock/blob/master/README.md>.\n\nFor a good example of a package making use of\ndiagrams-haddock, see the diagrams-contrib\npackage\n(<http://hackage.haskell.org/package/diagrams%2Dcontrib>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."blaze-svg" or (buildDepError "blaze-svg"))
          (hsPkgs."diagrams-builder" or (buildDepError "diagrams-builder"))
          (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-svg" or (buildDepError "diagrams-svg"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."cpphs" or (buildDepError "cpphs"))
          (hsPkgs."cautious-file" or (buildDepError "cautious-file"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          ];
        buildable = true;
        };
      exes = {
        "diagrams-haddock" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."diagrams-haddock" or (buildDepError "diagrams-haddock"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."cpphs" or (buildDepError "cpphs"))
            ];
          buildable = true;
          };
        };
      tests = {
        "diagrams-haddock-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."diagrams-haddock" or (buildDepError "diagrams-haddock"))
            ];
          buildable = true;
          };
        };
      };
    }