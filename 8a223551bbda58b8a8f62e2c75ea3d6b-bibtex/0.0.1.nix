{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base2 = true;
      buildexamples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bibtex";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/BibTeX";
        url = "";
        synopsis = "Parse, format and processing BibTeX files";
        description = "This package allows parsing, formatting and processing of BibTeX files.\nBibTeX files are databases for literature for the natbib package\nof the LaTeX typesetting system.";
        buildType = "Simple";
      };
      components = {
        bibtex = {
          depends  = [
            hsPkgs.parsec
            hsPkgs.utility-ht
          ] ++ (if _flags.base2
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.special-functors
            ]);
        };
        exes = {
          publication-overview = {};
        };
      };
    }