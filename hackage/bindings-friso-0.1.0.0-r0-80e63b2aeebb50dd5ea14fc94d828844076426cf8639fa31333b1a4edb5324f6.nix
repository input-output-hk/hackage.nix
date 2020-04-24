{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bindings-friso"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "cosmo0920.wp@gmail.com";
      author = "cosmo0920";
      homepage = "";
      url = "";
      synopsis = "Low level bindings for friso";
      description = "Bindings to Friso  <https://code.google.com/p/friso/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          ];
        libs = [ (pkgs."friso" or ((hsPkgs.pkgs-errors).sysDepError "friso")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }