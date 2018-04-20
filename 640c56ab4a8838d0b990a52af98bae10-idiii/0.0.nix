{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "idiii";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "laughedelic@gmail.com";
        author = "laughedelic";
        homepage = "";
        url = "";
        synopsis = "ID3v2 tag editing-suite";
        description = "ID3v2 tag editing-suite";
        buildType = "Simple";
      };
      components = {
        idiii = {
          depends  = [
            hsPkgs.base
            hsPkgs.polyparse
            hsPkgs.haskell98
            hsPkgs.bytestring
            hsPkgs.encoding
            hsPkgs.data-accessor
            hsPkgs.utf8-string
            hsPkgs.containers
            hsPkgs.MissingH
          ];
        };
      };
    }