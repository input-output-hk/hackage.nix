{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "canonical-filepath";
          version = "1.0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas Schilling <nominolo@googlemail.com>";
        author = "Max Bolingbroke, Thomas Schilling";
        homepage = "http://github.com/nominolo/canonical-filepath";
        url = "";
        synopsis = "Abstract data type for canonical file paths.";
        description = "Abstract data type for canonical file paths.";
        buildType = "Simple";
      };
      components = {
        canonical-filepath = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
      };
    }