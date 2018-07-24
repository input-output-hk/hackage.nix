{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pushme";
          version = "2.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "johnw@newartisans.com";
        author = "John Wiegley";
        homepage = "https://github.com/jwiegley/pushme#readme";
        url = "";
        synopsis = "Tool to synchronize directories with rsync, zfs or git-annex";
        description = "Script I use for synchronizing data among machines.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "pushme" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.foldl
              hsPkgs.io-storage
              hsPkgs.lens
              hsPkgs.logging
              hsPkgs.monad-logger
              hsPkgs.old-locale
              hsPkgs.optparse-applicative
              hsPkgs.parallel-io
              hsPkgs.pipes
              hsPkgs.pipes-group
              hsPkgs.pipes-safe
              hsPkgs.pipes-text
              hsPkgs.regex-posix
              hsPkgs.safe
              hsPkgs.shelly
              hsPkgs.system-fileio
              hsPkgs.system-filepath
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.text-format
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unix
              hsPkgs.unordered-containers
              hsPkgs.yaml
            ];
          };
        };
      };
    }