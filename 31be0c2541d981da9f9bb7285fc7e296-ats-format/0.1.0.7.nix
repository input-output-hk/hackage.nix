{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "ats-format";
          version = "0.1.0.7";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "https://hub.darcs.net/vmchale/ats-format#readme";
        url = "";
        synopsis = "A source-code formatter for ATS";
        description = "An opinionated source-code formatter for ATS (http://www.ats-lang.org/).";
        buildType = "Custom";
      };
      components = {
        ats-format = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.lens
            hsPkgs.deepseq
            hsPkgs.ansi-wl-pprint
            hsPkgs.recursion-schemes
            hsPkgs.optparse-applicative
            hsPkgs.ansi-terminal
            hsPkgs.composition-prelude
            hsPkgs.htoml-megaparsec
            hsPkgs.megaparsec
            hsPkgs.unordered-containers
            hsPkgs.text
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.file-embed
          ];
          build-tools = [
            hsPkgs.buildPackages.happy
            hsPkgs.buildPackages.alex
          ];
        };
        exes = {
          atsfmt = {
            depends  = [
              hsPkgs.base
              hsPkgs.ats-format
            ];
          };
        };
        tests = {
          ats-format-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.ats-format
              hsPkgs.hspec
              hsPkgs.dirstream
              hsPkgs.pipes
              hsPkgs.system-filepath
              hsPkgs.pipes-safe
              hsPkgs.filepath
              hsPkgs.hspec-core
            ];
          };
        };
        benchmarks = {
          ats-format-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.ats-format
              hsPkgs.criterion
            ];
          };
        };
      };
    }