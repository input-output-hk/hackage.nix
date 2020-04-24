{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hdevtools"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "See AUTHORS file";
      maintainer = "mutantlemon@gmail.com";
      author = "Bit Connor";
      homepage = "https://github.com/bitc/hdevtools/";
      url = "";
      synopsis = "Persistent GHC powered background server for FAST haskell development tools";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hdevtools" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."ghc-syb-utils" or ((hsPkgs.pkgs-errors).buildDepError "ghc-syb-utils"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }