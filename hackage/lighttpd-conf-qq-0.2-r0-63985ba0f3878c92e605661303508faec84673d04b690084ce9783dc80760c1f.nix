{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.3";
      identifier = { name = "lighttpd-conf-qq"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Matt Morrow";
      maintainer = "Matt Morrow <mjm2002@gmail.com>";
      author = "Matt Morrow";
      homepage = "";
      url = "";
      synopsis = "A QuasiQuoter for lighttpd configuration files.";
      description = "A QuasiQuoter for lighttpd configuration files.\nSee Language.Haskell.TH.Quote for details on\nQuasiQuoters. Haddock docs are at\n<http://code.haskell.org/~morrow/code/haskell/web/lighttpd-conf-qq/haddock/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."lighttpd-conf" or ((hsPkgs.pkgs-errors).buildDepError "lighttpd-conf"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."packedstring" or ((hsPkgs.pkgs-errors).buildDepError "packedstring"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.ghc or (pkgs.buildPackages.ghc or ((hsPkgs.pkgs-errors).buildToolDepError "ghc")))
          ];
        buildable = true;
        };
      };
    }