{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "unix-process-conduit";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/conduit";
        url = "";
        synopsis = "Run processes on Unix systems, with a conduit interface";
        description = "This library allows you to provide @conduit@ datatypes for the input and output streams. Note that you must compile your programs with @-threaded@.";
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
            ];
          };
        };
      };
    }