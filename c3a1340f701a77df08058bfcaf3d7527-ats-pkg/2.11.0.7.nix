{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      profile = false;
      eventlog = false;
      development = false;
      no-executable = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "ats-pkg";
          version = "2.11.0.7";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "";
        url = "";
        synopsis = "A build tool for ATS";
        description = "A collection of scripts to simplify building ATS projects.";
        buildType = "Custom";
      };
      components = {
        "ats-pkg" = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-client
            hsPkgs.bytestring
            hsPkgs.file-embed
            hsPkgs.shake
            hsPkgs.bzlib
            hsPkgs.Cabal
            hsPkgs.lzma
            hsPkgs.tar
            hsPkgs.zlib
            hsPkgs.http-client-tls
            hsPkgs.text
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.hashable
            hsPkgs.containers
            hsPkgs.parallel-io
            hsPkgs.mtl
            hsPkgs.dhall
            hsPkgs.ansi-wl-pprint
            hsPkgs.shake-ats
            hsPkgs.shake-ext
            hsPkgs.shake-c
            hsPkgs.composition-prelude
            hsPkgs.zip-archive
            hsPkgs.ansi-wl-pprint
            hsPkgs.binary
            hsPkgs.microlens
            hsPkgs.dependency
            hsPkgs.filemanip
            hsPkgs.filepath
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          build-tools = [
            hsPkgs.buildPackages.cpphs
          ];
        };
        exes = {
          "atspkg" = {
            depends  = pkgs.lib.optionals (!_flags.no-executable) [
              hsPkgs.base
              hsPkgs.ats-pkg
              hsPkgs.optparse-applicative
              hsPkgs.shake-ats
              hsPkgs.microlens
              hsPkgs.temporary
              hsPkgs.directory
              hsPkgs.composition-prelude
              hsPkgs.text
              hsPkgs.parallel-io
              hsPkgs.shake
            ];
          };
        };
      };
    }