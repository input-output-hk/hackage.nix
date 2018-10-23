{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "pandoc-stylefrommeta";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Alexey Radkov";
      maintainer = "Alexey Radkov <alexey.radkov@gmail.com>";
      author = "Alexey Radkov <alexey.radkov@gmail.com>";
      homepage = "http://github.com/lyokha/styleFromMeta";
      url = "";
      synopsis = "Pandoc filter to customize links, images and paragraphs";
      description = "Pandoc filter to customize links, images and paragraphs\n(with restrictions). Styles are read from the metadata of the document:\nthey may reside inside the document or in a separate YAML file.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "styleFromMeta" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.containers)
            (hsPkgs.MissingH)
            (hsPkgs.text)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }