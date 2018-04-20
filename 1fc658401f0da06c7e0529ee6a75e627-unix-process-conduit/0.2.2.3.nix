{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "unix-process-conduit";
          version = "0.2.2.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/conduit";
        url = "";
        synopsis = "Run processes on Unix systems, with a conduit interface (deprecated)";
        description = "Code moved into Keter itself, as that was the only user.";
        buildType = "Simple";
      };
      components = {
        unix-process-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.unix
            hsPkgs.process
            hsPkgs.time
            hsPkgs.filepath
            hsPkgs.stm
            hsPkgs.directory
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix-process-conduit
              hsPkgs.transformers
              hsPkgs.conduit
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.unix
            ];
          };
        };
      };
    }