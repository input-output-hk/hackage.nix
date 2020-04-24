{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ex-pool"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2013 Kim Altintop, 2011 MailRank Inc.";
      maintainer = "kim.altintop@gmail.com";
      author = "Kim Altintop, Bryan O'Sullivan";
      homepage = "https://github.com/kim/ex-pool";
      url = "";
      synopsis = "Another fork of resource-pool, with a MonadIO and MonadCatch constraint";
      description = "A fork of 'resource-pool' using 'MonadIO' and 'exceptions'.\n\nThe library also contains a number of fixes and enhancements which are not yet\nincluded in a Hackage release of the original library. Apart from that, this\nlibrary is a drop-in replacement for 'resource-pool', useful in cases where a\nmore general monadic type is desirable.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }