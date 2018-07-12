{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lhs2tex";
          version = "1.18";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Andres Loeh <lhs2tex@andres-loeh.de>";
        author = "Ralf Hinze <ralf.hinze@comlab.ox.ac.uk>, Andres Loeh <lhs2tex@andres-loeh.de>";
        homepage = "http://www.andres-loeh.de/lhs2tex/";
        url = "";
        synopsis = "Preprocessor for typesetting Haskell sources with LaTeX";
        description = "Preprocessor for typesetting Haskell sources with LaTeX";
        buildType = "Custom";
      };
      components = {
        exes = {
          "lhs2TeX" = {
            depends  = [
              hsPkgs.base
              hsPkgs.regex-compat
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.process
            ];
          };
        };
      };
    }