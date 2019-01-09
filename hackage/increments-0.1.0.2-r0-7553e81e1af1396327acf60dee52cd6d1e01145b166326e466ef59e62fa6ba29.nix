{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "increments"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jwlato@gmail.com";
      author = "John Lato <jwlato@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "type classes for incremental updates to data";
      description = "incremental updates to large data structures";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.beamable)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          ];
        };
      tests = {
        "increments-tests" = {
          depends = [
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.beamable)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            ];
          };
        };
      };
    }