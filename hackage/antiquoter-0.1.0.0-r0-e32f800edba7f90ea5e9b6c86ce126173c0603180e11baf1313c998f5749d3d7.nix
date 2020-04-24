{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "antiquoter"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Lars Corbijn";
      maintainer = "aspergesoepje@gmail.com";
      author = "Lars Corbijn";
      homepage = "";
      url = "";
      synopsis = "Combinator library for quasi- and anti-quoting.";
      description = "A combinator library to improve the building of anti-quoters.\nEspecially aimed at making user extensible antiquoters and\nremoving copy-and-paste programming from their definition.\n\nThe modules are\n\n* \"Language.Haskell.AntiQuoter.Base\" basic type aliases for\nbuilding antiquoters.\n\n* \"Language.Haskell.AntiQuoter.ExpPat\" making antiquoters which\ncan result in expressions as well as patters. Therefore only\none antiquoter has to be defined in stead of two.\n\n* \"Language.Haskell.AntiQuoter.Combinators\" more useful\ncombinators to use with the functions from\n\"Language.Haskell.AntiQuoter.ExpPat\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          ];
        buildable = true;
        };
      };
    }