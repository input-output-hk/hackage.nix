{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hlibev"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aycan.irican@core.gen.tr";
      author = "Aycan iRiCAN";
      homepage = "";
      url = "";
      synopsis = "FFI interface to libev";
      description = "FFI interface to libev";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        libs = [ (pkgs."ev" or ((hsPkgs.pkgs-errors).sysDepError "ev")) ];
        buildable = true;
        };
      };
    }