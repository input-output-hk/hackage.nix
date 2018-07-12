{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "rope";
          version = "0.6.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/rope";
        url = "";
        synopsis = "Tools for manipulating fingertrees of bytestrings with optional annotations";
        description = "Tools for manipulating fingertrees of bytestrings with optional annotations";
        buildType = "Simple";
      };
      components = {
        "rope" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.fingertree
            hsPkgs.utf8-string
            hsPkgs.mtl
          ];
        };
      };
    }