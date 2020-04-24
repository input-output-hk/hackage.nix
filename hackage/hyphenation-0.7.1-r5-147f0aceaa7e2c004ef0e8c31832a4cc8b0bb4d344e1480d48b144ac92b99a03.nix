{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { embed = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hyphenation"; version = "0.7.1"; };
      license = "BSD-2-Clause";
      copyright = "(C) 2012-2016 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/hyphenation";
      url = "";
      synopsis = "Configurable Knuth-Liang hyphenation";
      description = "Configurable Knuth-Liang hyphenation\n\nUses the UTF8 encoded hyphenation patterns provided by\nhyph-utf8 from\n<http://www.ctan.org/tex-archive/language/hyph-utf8>\n\nUsage:\n\n>>> hyphenate english_US \"supercalifragilisticexpialadocious\"\n[\"su\",\"per\",\"cal\",\"ifrag\",\"ilis\",\"tic\",\"ex\",\"pi\",\"al\",\"ado\",\"cious\"]\n\n>>> hyphenate english_US \"hyphenation\"\n[\"hy\",\"phen\",\"ation\"]\n\n>>> hyphenate icelandic \"va\\240lahei\\240avegavinnuverkf\\230rageymslusk\\250r\"\n[\"va\\240la\",\"hei\\240a\",\"vega\",\"vinnu\",\"verk\",\"f\\230ra\",\"geymslu\",\"sk\\250r\"]";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or ((hsPkgs.pkgs-errors).buildToolDepError "cabal-doctest")))
        ];
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.11")) (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))) ++ (pkgs.lib).optional (flags.embed) (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"));
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."hyphenation" or ((hsPkgs.pkgs-errors).buildDepError "hyphenation"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }