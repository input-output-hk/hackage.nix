{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dgim";
        version = "0.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "musically.ut@gmail.com";
      author = "Utkarsh Upadhyay";
      homepage = "https://github.com/musically-ut/haskell-dgim";
      url = "";
      synopsis = "Implementation of DGIM algorithm";
      description = "A basic implementation of the DGIM algorithm for counting the occurrence of certain elements in a fixed length prefix of a stream.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "dgim-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.dgim)
          ];
        };
      };
    };
  }