{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tar-conduit";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com, bartavelle@gmail.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/tar-conduit#readme";
        url = "";
        synopsis = "Parse tar files using conduit for streaming";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        tar-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit-combinators
          ];
        };
      };
    }