{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "base";
          version = "3.0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Basic libraries (backwards-compatibility version)";
        description = "This is a backwards-compatible version of the base package.\nIt depends on a later version of base, and was probably supplied\nwith your compiler when it was installed.";
        buildType = "Simple";
      };
      components = {
        base = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
          ];
        };
      };
    }