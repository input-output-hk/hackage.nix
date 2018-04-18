{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fsnotify-conduit";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2016 FP Complete";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/fpco/fsnotify-conduit#readme";
        url = "";
        synopsis = "Get filesystem notifications as a stream of events";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        fsnotify-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.fsnotify
            hsPkgs.resourcet
            hsPkgs.transformers
          ];
        };
        tests = {
          fsnotify-conduit-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.conduit
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.fsnotify-conduit
              hsPkgs.hspec
              hsPkgs.resourcet
              hsPkgs.temporary
              hsPkgs.transformers
            ];
          };
        };
      };
    }