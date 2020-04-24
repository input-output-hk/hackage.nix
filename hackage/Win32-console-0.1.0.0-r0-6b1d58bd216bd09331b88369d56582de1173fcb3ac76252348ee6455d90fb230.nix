{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Win32-console"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 siracusa";
      maintainer = "siracusa <pvnsrc@gmail.com>";
      author = "siracusa";
      homepage = "";
      url = "";
      synopsis = "Binding to the Win32 console API";
      description = "This package provides bindings to the Win32 console API types and functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }