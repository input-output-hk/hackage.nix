{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "sizes";
          version = "1.0.0";
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
          "sizes" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.deepseq
              hsPkgs.lens
              hsPkgs.parallel-io
              hsPkgs.system-fileio
              hsPkgs.system-filepath
              hsPkgs.text
              hsPkgs.unix
            ];
          };
        };
      };
    }