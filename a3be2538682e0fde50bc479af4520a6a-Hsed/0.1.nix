{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Hsed";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "virukav@gmail.com";
        author = "Vitaliy Rukavishnikov";
        homepage = "http://github.com/rukav/Hsed";
        url = "";
        synopsis = "Stream Editor in Haskell";
        description = "Haskell Stream Editor";
        buildType = "Simple";
      };
      components = {
        exes = {
          Hsed = {
            depends  = [
              hsPkgs.base
              hsPkgs.Glob
              hsPkgs.cmdargs
              hsPkgs.data-accessor
              hsPkgs.data-accessor-template
              hsPkgs.data-accessor-transformers
              hsPkgs.parsec
              hsPkgs.bytestring
              hsPkgs.regex-compat
              hsPkgs.regex-base
              hsPkgs.regex-posix
              hsPkgs.array
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.haskell98
            ];
          };
        };
      };
    }