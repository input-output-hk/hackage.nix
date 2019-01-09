{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "shannon-fano"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "armandoifsantos@gmail.com";
      author = "Armando Santos";
      homepage = "www.github.com/bolt12/shannon-fano";
      url = "";
      synopsis = "Shannon-fano compression algorithm implementation in Haskell";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.split) ];
        };
      tests = {
        "tests" = {
          depends = [ (hsPkgs.base) (hsPkgs.shannon-fano) (hsPkgs.QuickCheck) ];
          };
        };
      };
    }