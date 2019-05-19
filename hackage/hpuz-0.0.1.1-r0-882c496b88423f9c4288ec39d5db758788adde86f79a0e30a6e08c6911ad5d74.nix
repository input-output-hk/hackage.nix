{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hpuz"; version = "0.0.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) Chris Casinghino 2009";
      maintainer = "chris.casinghino@gmail.com";
      author = "Chris Casinghino";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for libpuz";
      description = "Provides support for reading and writing the .puz crossword puzzle\nformat from haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.parsec)
          ];
        libs = [ (pkgs."puz") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
          ];
        };
      };
    }