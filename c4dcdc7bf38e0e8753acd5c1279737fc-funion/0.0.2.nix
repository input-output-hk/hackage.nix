{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "funion";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nathanwiegand@gmail.com";
        author = "Nathan Wiegand";
        homepage = "http://github.com/nathanwiegand/funion";
        url = "";
        synopsis = "A unioning file-system using HFuse";
        description = "A unioning file-system using HFuse";
        buildType = "Simple";
      };
      components = {
        exes = {
          funion = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.HFuse
              hsPkgs.bytestring
              hsPkgs.haskell98
              hsPkgs.directory
              hsPkgs.unix
              hsPkgs.filepath
            ];
          };
        };
      };
    }