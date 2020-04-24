{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "construct"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Mario Blažević 2020";
      maintainer = "Mario Blažević <blamario@protonmail.com>";
      author = "Mario Blažević";
      homepage = "";
      url = "";
      synopsis = "Haskell version of the Construct library for easy specification of file formats";
      description = "A Haskell version of the <https://construct.readthedocs.io/en/latest/intro.html Construct> library for Python. A\nsuccinct file format specification provides both a parser and the serializer for the format.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or ((hsPkgs.pkgs-errors).buildToolDepError "cabal-doctest")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."monoid-subclasses" or ((hsPkgs.pkgs-errors).buildDepError "monoid-subclasses"))
          (hsPkgs."incremental-parser" or ((hsPkgs.pkgs-errors).buildDepError "incremental-parser"))
          (hsPkgs."parsers" or ((hsPkgs.pkgs-errors).buildDepError "parsers"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."rank2classes" or ((hsPkgs.pkgs-errors).buildDepError "rank2classes"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."construct" or ((hsPkgs.pkgs-errors).buildDepError "construct"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."incremental-parser" or ((hsPkgs.pkgs-errors).buildDepError "incremental-parser"))
            (hsPkgs."rank2classes" or ((hsPkgs.pkgs-errors).buildDepError "rank2classes"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit or (pkgs.buildPackages.markdown-unlit or ((hsPkgs.pkgs-errors).buildToolDepError "markdown-unlit")))
            ];
          buildable = true;
          };
        "examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."construct" or ((hsPkgs.pkgs-errors).buildDepError "construct"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."rank2classes" or ((hsPkgs.pkgs-errors).buildDepError "rank2classes"))
            (hsPkgs."monoid-subclasses" or ((hsPkgs.pkgs-errors).buildDepError "monoid-subclasses"))
            (hsPkgs."incremental-parser" or ((hsPkgs.pkgs-errors).buildDepError "incremental-parser"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }