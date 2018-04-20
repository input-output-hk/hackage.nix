{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "packedstring";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "(Deprecated) Packed Strings.";
        description = "(Deprecated) Packed Strings.";
        buildType = "Simple";
      };
      components = {
        packedstring = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }