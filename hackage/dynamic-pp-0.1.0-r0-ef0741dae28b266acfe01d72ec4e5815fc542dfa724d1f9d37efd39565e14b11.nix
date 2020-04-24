{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = { name = "dynamic-pp"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Eric McCorkle.  All rights reserved.";
      maintainer = "Eric McCorkle <emc2@metricspace.net>";
      author = "Eric McCorkle";
      homepage = "https://github.com/emc2/dynamic-pp";
      url = "";
      synopsis = "A pretty-print library that employs a dynamic programming algorithm for optimal rendering.";
      description = "This library provides pretty-print operators similar to the set provided by the Wadler-Leijin pretty-printer.\nThe main difference, however, is that it utilizes a dynamic programming algorithm for rendering.  This slightly\nreduces the available combinators, but provides a layout engine that optimizes documents, minimizing their\nover-wrap and line count.\n\nThe dynamic programming algorithm has pathological cases that cause it to run in quadratic time; however,\ntypical use on code-like programs should see better run times.  In general, documents with many uses of the\nchoose combinator will require more time to render.\n\nThis library also provides two simpler rendering engines for uses where the full optimal layout engine is not\nnecessary.  These engines are much simpler and consume fewer resources.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "UnitTest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."HUnit-Plus" or ((hsPkgs.pkgs-errors).buildDepError "HUnit-Plus"))
            ];
          buildable = true;
          };
        };
      };
    }