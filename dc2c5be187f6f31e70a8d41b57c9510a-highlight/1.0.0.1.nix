{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "highlight";
          version = "1.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Dennis Gosnell";
        maintainer = "cdep.illabout@gmail.com";
        author = "Dennis Gosnell";
        homepage = "https://github.com/cdepillabout/highlight";
        url = "";
        synopsis = "Command line tool for highlighting parts of files matching a regex.";
        description = "Please see <https://github.com/cdepillabout/highlight#readme README.md>.";
        buildType = "Simple";
      };
      components = {
        highlight = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.ansi-terminal
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.mtl-compat
            hsPkgs.optparse-applicative
            hsPkgs.pipes
            hsPkgs.pipes-bytestring
            hsPkgs.pipes-group
            hsPkgs.pipes-safe
            hsPkgs.regex
            hsPkgs.regex-with-pcre
            hsPkgs.semigroups
            hsPkgs.system-filepath
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.transformers-compat
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.unix ]);
        };
        exes = {
          highlight = {
            depends  = [
              hsPkgs.base
              hsPkgs.highlight
            ];
          };
          hrep = {
            depends  = [
              hsPkgs.base
              hsPkgs.highlight
            ];
          };
        };
        tests = {
          highlight-doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.QuickCheck
            ];
          };
          highlight-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.highlight
              hsPkgs.lens
              hsPkgs.pipes
              hsPkgs.process
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.transformers
              hsPkgs.transformers-compat
            ] ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [ hsPkgs.unix ]);
          };
        };
        benchmarks = {
          highlight-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.highlight
            ];
          };
        };
      };
    }