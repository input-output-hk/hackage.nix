{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "antiquoter";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Lars Corbijn";
      maintainer = "aspergesoepje@gmail.com";
      author = "Lars Corbijn";
      homepage = "";
      url = "";
      synopsis = "Combinator library for quasi- and anti-quoting.";
      description = "A combinator library to improve the building of anti-quoters.\nEspecially aimed at removing copy-and-paste programming from\ntheir definition. Other antiquoting related features could be\nincluded in the future.\n\nThe modules are\n\n* \"Language.Haskell.AntiQuoter.Base\" basic types for building\nantiquoters. It also contains the most detailed example of\nthe basic usage.\n\n* \"Language.Haskell.AntiQuoter.ExpPat\" making antiquoters which\ncan antiquote both expressions and patters. Therefore only\none antiquoter has to be defined in stead of two.\n\n* \"Language.Haskell.AntiQuoter.Combinators\" more useful\ncombinators to use with the functions from\n\"Language.Haskell.AntiQuoter.ExpPat\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.syb)
        ];
      };
    };
  }