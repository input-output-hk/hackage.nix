{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "binembed-example";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "claude@mathr.co.uk";
        author = "Claude Heiland-Allen";
        homepage = "http://code.mathr.co.uk/binembed";
        url = "";
        synopsis = "Example project using binembed to embed data in object files.";
        description = "binembed-example prints out its source code, embedded into it\nat compile time using the \"binembed\" package.";
        buildType = "Custom";
      };
      components = {
        exes = {
          binembed-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.binembed
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.filepath
            ];
          };
        };
      };
    }