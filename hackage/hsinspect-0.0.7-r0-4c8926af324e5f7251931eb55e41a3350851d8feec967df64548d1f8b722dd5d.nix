{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { ghcflags = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hsinspect"; version = "0.0.7"; };
      license = "GPL-3.0-or-later";
      copyright = "2019 Tseen She";
      maintainer = "Tseen She";
      author = "Tseen She";
      homepage = "";
      url = "";
      synopsis = "Inspect Haskell source files.";
      description = "Inspect @.hs@ files using the ghc api.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."ghc-boot" or ((hsPkgs.pkgs-errors).buildDepError "ghc-boot"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ] ++ (pkgs.lib).optional (flags.ghcflags) (hsPkgs."ghcflags" or ((hsPkgs.pkgs-errors).buildDepError "ghcflags"));
        buildable = true;
        };
      exes = {
        "hsinspect" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghc-boot" or ((hsPkgs.pkgs-errors).buildDepError "ghc-boot"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."hsinspect" or ((hsPkgs.pkgs-errors).buildDepError "hsinspect"))
            ] ++ (pkgs.lib).optional (flags.ghcflags) (hsPkgs."ghcflags" or ((hsPkgs.pkgs-errors).buildDepError "ghcflags"));
          buildable = true;
          };
        };
      };
    }