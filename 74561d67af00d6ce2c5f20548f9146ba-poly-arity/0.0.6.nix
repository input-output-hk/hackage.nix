{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "poly-arity";
          version = "0.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Tools for working with functions of undetermined arity";
        description = "";
        buildType = "Simple";
      };
      components = {
        poly-arity = {
          depends  = [
            hsPkgs.base
            hsPkgs.constraints
            hsPkgs.HList
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
      };
    }