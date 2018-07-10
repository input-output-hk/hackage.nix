{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "flux-monoid";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Chris Penner";
        maintainer = "";
        author = "Chris Penner";
        homepage = "https://github.com/githubuser/flux-monoid#readme";
        url = "";
        synopsis = "A monoid for tracking changes";
        description = "";
        buildType = "Simple";
      };
      components = {
        flux-monoid = {
          depends  = [ hsPkgs.base ];
        };
      };
    }