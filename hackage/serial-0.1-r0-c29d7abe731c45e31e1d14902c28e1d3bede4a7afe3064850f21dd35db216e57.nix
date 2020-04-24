{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "serial"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "fred.ross@epfl.ch";
      author = "Frederick Ross";
      homepage = "";
      url = "";
      synopsis = "POSIX serial port wrapper";
      description = "Provides a clean interface to working with POSIX serial ports in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }