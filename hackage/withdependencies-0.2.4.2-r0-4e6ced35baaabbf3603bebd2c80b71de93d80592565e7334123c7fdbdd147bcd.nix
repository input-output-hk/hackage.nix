{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "withdependencies"; version = "0.2.4.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "https://github.com/bartavelle/withdependencies";
      url = "";
      synopsis = "Run computations that depend on one or more elements in a stream.";
      description = "Run computations that depend on one or more elements in a stream.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.conduit)
          (hsPkgs.mtl)
          (hsPkgs.profunctors)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.withdependencies)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.conduit)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }