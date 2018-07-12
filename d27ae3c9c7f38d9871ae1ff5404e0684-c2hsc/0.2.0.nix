{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "c2hsc";
          version = "0.2.0";
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
        exes = {
          "c2hsc" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.directory
              hsPkgs.language-c
              hsPkgs.HStringTemplate
              hsPkgs.pretty
              hsPkgs.filepath
            ];
          };
        };
      };
    }