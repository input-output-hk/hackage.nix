{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "compact-mutable-vector"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rightfold <rightfold@gmail.com>";
      author = "rightfold";
      homepage = "";
      url = "";
      synopsis = "Mutable vector with different GC characteristics";
      description = "Library for avoiding excessive mutable array traversals by the garbage\ncollector when you use compact regions for your elements.\n\nSee Haddock for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.compact)
          (hsPkgs.ghc-prim)
          (hsPkgs.primitive)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.compact)
            (hsPkgs.compact-mutable-vector)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }