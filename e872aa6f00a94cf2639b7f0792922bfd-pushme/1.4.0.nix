{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pushme";
          version = "1.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "John Wiegley <johnw@newartisans.com>";
        author = "John Wiegley";
        homepage = "https://github.com/jwiegley/pushme";
        url = "";
        synopsis = "Tool to synchronize multiple directories with rsync, zfs or git-annex";
        description = "Script I use for synchronizing my data among machines.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "pushme" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.hslogger
              hsPkgs.io-storage
              hsPkgs.lens
              hsPkgs.old-locale
              hsPkgs.optparse-applicative
              hsPkgs.parallel-io
              hsPkgs.pointless-fun
              hsPkgs.regex-posix
              hsPkgs.shelly
              hsPkgs.system-fileio
              hsPkgs.system-filepath
              hsPkgs.text
              hsPkgs.text-format
              hsPkgs.time
              hsPkgs.unix
              hsPkgs.unordered-containers
              hsPkgs.yaml
            ];
          };
        };
      };
    }