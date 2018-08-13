{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "doi";
        version = "0.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Johannes Gerer <oss@johannesgerer.com>";
      author = "Johannes Gerer";
      homepage = "http://johannesgerer.com/doi";
      url = "";
      synopsis = "Automatic Bibtex and fulltext of scientific articles";
      description = "Extract Bibtex entries and download fulltext of scientific articles automatically for a given DOI or URL\n\nSee <https://github.com/johannesgerer/doi Readme> on Github.";
      buildType = "Simple";
    };
    components = {
      "doi" = {
        depends  = [
          (hsPkgs.MissingH)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bibtex)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.haskeline)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.regex-base)
          (hsPkgs.regex-compat)
          (hsPkgs.regex-tdfa)
          (hsPkgs.safe)
          (hsPkgs.strict)
          (hsPkgs.tagsoup)
          (hsPkgs.temporary)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.utility-ht)
          (hsPkgs.urlencoded)
        ];
      };
      exes = {
        "doi" = {
          depends  = [
            (hsPkgs.MissingH)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bibtex)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.regex-base)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-tdfa)
            (hsPkgs.safe)
            (hsPkgs.strict)
            (hsPkgs.tagsoup)
            (hsPkgs.temporary)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.utility-ht)
            (hsPkgs.urlencoded)
          ];
        };
      };
    };
  }