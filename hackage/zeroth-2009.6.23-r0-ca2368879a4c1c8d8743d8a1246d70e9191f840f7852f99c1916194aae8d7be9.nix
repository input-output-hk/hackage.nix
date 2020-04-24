{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "zeroth"; version = "2009.6.23"; };
      license = "BSD-3-Clause";
      copyright = "2005-2008 Lemmih <lemmih@gmail.com>, 2009 Robin Green <greenrd@greenrd.org>";
      maintainer = "Robin Green <greenrd@greenrd.org>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "ZeroTH - remove unnecessary TH dependencies";
      description = "TemplateHaskell is fairly useful for generating new\nHaskell code. This, however, can incur a dependency on\nTH on subsequent uses where none theoretically should exist.\nZeroTH solves this by scanning a file for top-level TH\ndeclarations, evaluates them, removes TH imports, and outputs\nthe resulting code.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."hskeleton" or ((hsPkgs.pkgs-errors).buildDepError "hskeleton"))
          (hsPkgs."hskeleton" or ((hsPkgs.pkgs-errors).buildDepError "hskeleton"))
          (hsPkgs."derive" or ((hsPkgs.pkgs-errors).buildDepError "derive"))
          (hsPkgs."monoid-record" or ((hsPkgs.pkgs-errors).buildDepError "monoid-record"))
          (hsPkgs."monoid-record" or ((hsPkgs.pkgs-errors).buildDepError "monoid-record"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "zeroth" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."hskeleton" or ((hsPkgs.pkgs-errors).buildDepError "hskeleton"))
            (hsPkgs."hskeleton" or ((hsPkgs.pkgs-errors).buildDepError "hskeleton"))
            (hsPkgs."derive" or ((hsPkgs.pkgs-errors).buildDepError "derive"))
            (hsPkgs."monoid-record" or ((hsPkgs.pkgs-errors).buildDepError "monoid-record"))
            (hsPkgs."monoid-record" or ((hsPkgs.pkgs-errors).buildDepError "monoid-record"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }