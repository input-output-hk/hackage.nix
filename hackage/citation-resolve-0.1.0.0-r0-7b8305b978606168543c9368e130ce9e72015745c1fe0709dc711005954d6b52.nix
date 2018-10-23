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
        name = "citation-resolve";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "muranushi@gmail.com";
      author = "Takayuki Muranushi";
      homepage = "https://github.com/nushio3/citation-resolve";
      url = "";
      synopsis = "convert document IDs such as DOI, ISBN, arXiv ID to bibliographic reference.";
      description = "This modules provides a way to convert document identifiers, such\nas DOIs, ISBNs, arXiv IDs to bibliographic references.\n\nEach type of identifiers will be converted via internet services\nto a bibliographic record of type 'Text.CSL.Reference' , which in\nturn can be rendered in various format using @citeproc-hs@ package\n<hackage.haskell.org/package/citeproc-hs> .\n\nMoreover, the server responses are cached in a local database,\nmaking the server load as little as possible.";
      buildType = "Simple";
    };
    components = {
      "citation-resolve" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.citeproc-hs)
          (hsPkgs.curl)
          (hsPkgs.directory)
          (hsPkgs.download-curl)
          (hsPkgs.persistent)
          (hsPkgs.persistent-template)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.MissingH)
            (hsPkgs.doctest)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary-search)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }