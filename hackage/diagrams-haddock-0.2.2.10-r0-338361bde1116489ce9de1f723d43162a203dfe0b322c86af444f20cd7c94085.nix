{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "diagrams-haddock"; version = "0.2.2.10"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."blaze-svg" or ((hsPkgs.pkgs-errors).buildDepError "blaze-svg"))
          (hsPkgs."diagrams-builder" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-builder"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-svg" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-svg"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."cpphs" or ((hsPkgs.pkgs-errors).buildDepError "cpphs"))
          (hsPkgs."cautious-file" or ((hsPkgs.pkgs-errors).buildDepError "cautious-file"))
          (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          ];
        buildable = true;
        };
      exes = {
        "diagrams-haddock" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."diagrams-haddock" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-haddock"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."cpphs" or ((hsPkgs.pkgs-errors).buildDepError "cpphs"))
            ];
          buildable = true;
          };
        };
      tests = {
        "diagrams-haddock-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."diagrams-haddock" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-haddock"))
            ];
          buildable = true;
          };
        };
      };
    }