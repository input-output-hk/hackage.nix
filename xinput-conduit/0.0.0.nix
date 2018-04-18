{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "xinput-conduit";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "Conduit of keys pressed by xinput";
        description = "Conduit of keys pressed by xinput";
        buildType = "Simple";
      };
      components = {
        xinput-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.transformers
          ];
        };
      };
    }