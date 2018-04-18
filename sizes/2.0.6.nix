{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "sizes";
          version = "2.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "John Wiegley <johnw@newartisans.com>";
        author = "John Wiegley";
        homepage = "https://github.com/jwiegley/sizes";
        url = "";
        synopsis = "Recursively show space (size and i-nodes) used in subdirectories";
        description = "Recursively show space (size and i-nodes) used in subdirectories";
        buildType = "Simple";
      };
      components = {
        exes = {
          sizes = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.deepseq
              hsPkgs.lens
              hsPkgs.parallel-io
              hsPkgs.regex-posix
              hsPkgs.system-fileio
              hsPkgs.system-filepath
              hsPkgs.dlist
              hsPkgs.text
              hsPkgs.unix
            ];
          };
        };
      };
    }