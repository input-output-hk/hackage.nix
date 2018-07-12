{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.1.6";
        identifier = {
          name = "lhs2tex";
          version = "1.12";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Andres Loeh <lhs2tex@andres-loeh.de>";
        author = "Ralf Hinze <ralf@informatik.uni-bonn.de>, Andres Loeh <lhs2tex@andres-loeh.de>";
        homepage = "http://www.andres-loeh.de/lhs2tex/";
        url = "http://www.andres-loeh.de/lhs2tex/lhs2tex-1.11.tar.gz";
        synopsis = "Preprocessor for typesetting Haskell sources with LaTeX";
        description = "";
        buildType = "Custom";
      };
      components = {
        exes = {
          "lhs2TeX" = {
            depends  = [
              hsPkgs.base
              hsPkgs.regex-compat
            ];
          };
        };
      };
    }