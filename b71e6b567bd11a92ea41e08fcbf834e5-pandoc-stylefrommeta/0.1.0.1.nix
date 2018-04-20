{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pandoc-stylefrommeta";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Alexey Radkov";
        maintainer = "Alexey Radkov <alexey.radkov@gmail.com>";
        author = "Alexey Radkov <alexey.radkov@gmail.com>";
        homepage = "http://github.com/lyokha/styleFromMeta";
        url = "";
        synopsis = "Pandoc filter to customize links, images and paragraphs";
        description = "Pandoc filter to customize links, images and paragraphs\n(with restrictions). Styles are read from the metadata of the document:\nthey may reside inside the document or in a separate YAML file. See\ndetails <http://github.com/lyokha/styleFromMeta#stylefrommeta here>.";
        buildType = "Simple";
      };
      components = {
        exes = {
          styleFromMeta = {
            depends  = [
              hsPkgs.base
              hsPkgs.pandoc
              hsPkgs.pandoc-types
              hsPkgs.containers
              hsPkgs.MissingH
              hsPkgs.HaTeX
            ];
          };
        };
      };
    }