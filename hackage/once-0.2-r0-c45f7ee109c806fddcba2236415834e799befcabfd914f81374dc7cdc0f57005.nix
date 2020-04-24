{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "once"; version = "0.2"; };
      license = "GPL-3.0-only";
      copyright = "2015,2016 Dmitry Bogatov";
      maintainer = "KAction@gnu.org";
      author = "Dmitry Bogatov";
      homepage = "https://anonscm.debian.org/cgit/users/kaction-guest/haskell-once.git";
      url = "";
      synopsis = "memoization for IO actions and functions";
      description = "Please see Control.Once for examples";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }