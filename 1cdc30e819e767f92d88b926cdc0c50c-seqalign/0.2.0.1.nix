{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "seqalign";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2014-2015";
        maintainer = "ropoctl@gmail.com";
        author = "Rob O'Callahan";
        homepage = "";
        url = "";
        synopsis = "Sequence Alignment";
        description = "FFI wrappers for global and local string alignment functions";
        buildType = "Simple";
      };
      components = {
        seqalign = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.vector
          ];
        };
      };
    }