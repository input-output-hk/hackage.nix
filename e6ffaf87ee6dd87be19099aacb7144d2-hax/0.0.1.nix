{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hax";
          version = "0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Johannes Gerer <oss@johannesgerer.com>";
        author = "Johannes Gerer";
        homepage = "http://johannesgerer.com/hax";
        url = "";
        synopsis = "Haskell cash-flow and tax simulation";
        description = "This package contains a library that for a double-entry accounting based cash-flow simulation with a detailed translation of the German tax code including personal income tax (Einkommensteuer), corporate tax (Körperschaftsteuer) and trade/business tax (Gewerbesteuer).\n\nSee <https://github.com/johannesgerer/hax Readme> on Github.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "hax" = {
            depends  = [
              hsPkgs.Decimal
              hsPkgs.aeson
              hsPkgs.array
              hsPkgs.base
              hsPkgs.blaze-html
              hsPkgs.blaze-markup
              hsPkgs.boxes
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.split
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
      };
    }