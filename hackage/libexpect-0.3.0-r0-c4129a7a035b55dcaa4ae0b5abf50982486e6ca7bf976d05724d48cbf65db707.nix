{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "libexpect"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "stroantree@gmail.com";
      author = "Stephen Roantree";
      homepage = "";
      url = "";
      synopsis = "Library for interacting with console applications via pseudoterminals.";
      description = "Bindings to libexpect.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        libs = [
          (pkgs."expect" or ((hsPkgs.pkgs-errors).sysDepError "expect"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }