{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "oset"; version = "0.4.0.1"; };
      license = "MIT";
      copyright = "2019 Richard Cook";
      maintainer = "rcook@rcook.org";
      author = "Richard Cook";
      homepage = "https://github.com/rcook/oset#readme";
      url = "";
      synopsis = "An insertion-order-preserving set";
      description = "This package provides @OSet@, an insertion-order-preserving set, with type class instances for @Foldable@ and @Data@ as well as wrappers, @OSetL@ and @OSetR@, with left- and right-biased instances of @Semigroup@ and @Monoid@ respectively.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      exes = {
        "oset-app" = {
          depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.oset) ];
          };
        };
      tests = {
        "oset-spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.oset)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }