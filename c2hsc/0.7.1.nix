{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "c2hsc";
          version = "0.7.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "John Wiegley <johnw@newartisans.com>";
        author = "John Wiegley";
        homepage = "https://github.com/jwiegley/c2hsc";
        url = "";
        synopsis = "Convert C API header files to .hsc and .hsc.helper.c files";
        description = "Convert C API header files to .hsc and .hsc.helper.c files";
        buildType = "Simple";
      };
      components = {
        c2hsc = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.directory
            hsPkgs.language-c
            hsPkgs.logging
            hsPkgs.HStringTemplate
            hsPkgs.pretty
            hsPkgs.filepath
            hsPkgs.split
            hsPkgs.temporary
            hsPkgs.data-default
            hsPkgs.text
          ];
        };
        exes = {
          c2hsc = {
            depends  = [
              hsPkgs.base
              hsPkgs.c2hsc
              hsPkgs.cmdargs
              hsPkgs.HStringTemplate
              hsPkgs.pretty
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.language-c
              hsPkgs.logging
              hsPkgs.containers
              hsPkgs.split
              hsPkgs.transformers
              hsPkgs.temporary
              hsPkgs.data-default
              hsPkgs.text
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.c2hsc
              hsPkgs.hspec
              hsPkgs.here
              hsPkgs.monad-logger
              hsPkgs.logging
              hsPkgs.text
            ];
          };
        };
      };
    }