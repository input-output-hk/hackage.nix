{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tsuntsun";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014-2017 Mateusz Kowalczyk";
        maintainer = "fuuzetsu@fuuzetsu.co.uk";
        author = "Mateusz Kowalczyk";
        homepage = "https://github.com/Fuuzetsu/tsuntsun";
        url = "";
        synopsis = "Interacts with tesseract to ease reading of RAW Japanese manga.";
        description = "Interacts with tesseract to ease reading of RAW Japanese manga.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "tsuntsun" = {
            depends  = [
              hsPkgs.base
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.conduit-extra
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.gtk3
              hsPkgs.optparse-applicative
              hsPkgs.resourcet
              hsPkgs.stm
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.typed-process
            ];
          };
        };
      };
    }