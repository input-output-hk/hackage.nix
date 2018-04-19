{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      interrupt = true;
      server = true;
      custom-binary = true;
      c-runtime = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gf";
          version = "3.6";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Thomas Hallgren";
        author = "";
        homepage = "http://www.grammaticalframework.org/";
        url = "";
        synopsis = "Grammatical Framework";
        description = "GF, Grammatical Framework, is a programming language for multilingual grammar applications";
        buildType = "Custom";
      };
      components = {
        gf = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.fst
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.random
            hsPkgs.pretty
            hsPkgs.mtl
          ] ++ pkgs.lib.optional (!_flags.custom-binary) hsPkgs.binary;
          libs = pkgs.lib.optionals _flags.c-runtime [
            pkgs.gu
            pkgs.pgf
          ];
        };
        exes = {
          gf = {
            depends  = (([
              hsPkgs.gf
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.fst
              hsPkgs.directory
              hsPkgs.random
              hsPkgs.time
              hsPkgs.time-compat
              hsPkgs.old-locale
              hsPkgs.process
              hsPkgs.pretty
              hsPkgs.mtl
              hsPkgs.haskeline
              hsPkgs.parallel
              hsPkgs.utf8-string
            ] ++ pkgs.lib.optionals _flags.server [
              hsPkgs.httpd-shed
              hsPkgs.network
              hsPkgs.json
              hsPkgs.cgi
            ]) ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [
                hsPkgs.unix
              ])) ++ pkgs.lib.optionals (!_flags.custom-binary) [
              hsPkgs.binary
              hsPkgs.data-binary-ieee754
            ];
          };
          pgf-shell = {
            depends  = [
              hsPkgs.gf
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.lifted-base
            ];
          };
        };
        tests = {
          rgl-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HTF
              hsPkgs.process
              hsPkgs.HUnit
              hsPkgs.filepath
              hsPkgs.directory
            ];
          };
          gf-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
            ];
          };
        };
      };
    }