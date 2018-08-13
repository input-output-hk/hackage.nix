{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "derive-storable";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "mateusz.p.kloczko@gmail.com";
      author = "Mateusz Kloczko";
      homepage = "https://www.github.com/mkloczko/derive-storable/";
      url = "";
      synopsis = "Deriving Storable instances using generics.";
      description = "The package allows for automatic derivation of Storable instances\nwith C-like memory layout.";
      buildType = "Simple";
    };
    components = {
      "derive-storable" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "c_alignment" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.generic-storable)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.generic-storable)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }