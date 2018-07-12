{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "binembed-example";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "claudiusmaximus@goto10.org";
        author = "Claude Heiland-Allen";
        homepage = "http://gitorious.org/binembed";
        url = "";
        synopsis = "Example project using binembed to embed data in object files.";
        description = "binembed-example prints out its source code, embedded into it\nat compile time using the \"binembed\" package.";
        buildType = "Custom";
      };
      components = {
        exes = {
          "binembed-example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.binembed
            ];
          };
        };
      };
    }