{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hakyll-agda";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Francesco Mazzoli (f@mazzo.li)";
        author = "Francesco Mazzoli (f@mazzo.li)";
        homepage = "https://github.com/bitonic/website";
        url = "";
        synopsis = "Wrapper to integrate literate Agda files with Hakyll";
        description = "Simple module useful to generate blog posts from literate Agda files.";
        buildType = "Simple";
      };
      components = {
        hakyll-agda = {
          depends  = [
            hsPkgs.base
            hsPkgs.hakyll
            hsPkgs.Agda
            hsPkgs.pandoc
            hsPkgs.xhtml
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
      };
    }