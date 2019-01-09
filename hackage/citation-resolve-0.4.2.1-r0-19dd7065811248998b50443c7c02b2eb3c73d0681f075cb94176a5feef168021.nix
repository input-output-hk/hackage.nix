{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "citation-resolve"; version = "0.4.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "muranushi@gmail.com";
      author = "Takayuki Muranushi";
      homepage = "https://github.com/nushio3/citation-resolve";
      url = "";
      synopsis = "convert document IDs such as DOI, ISBN, arXiv ID to bibliographic reference.";
      description = "This modules provides a way to convert document identifiers, such\nas DOIs, ISBNs, arXiv IDs to bibliographic references.\n\nEach type of identifiers will be converted via internet services\nto a bibliographic record of type 'Text.CSL.Reference' , which in\nturn can be rendered in various format using @citeproc-hs@ package\n<http://hackage.haskell.org/package/citeproc-hs> .\n\nMoreover, the server responses are cached in a local database,\nmaking the server load as little as possible.\n\nAt the moment, citation-resolve requires \"xsltproc\" executable\nto parse xml, in order to resolve ISBNs.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.citeproc-hs)
          (hsPkgs.containers)
          (hsPkgs.curl)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.download-curl)
          (hsPkgs.either)
          (hsPkgs.lens)
          (hsPkgs.MissingH)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.yaml)
          ];
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.MissingH)
            (hsPkgs.doctest)
            ];
          };
        "spec" = {
          depends = [ (hsPkgs.base) (hsPkgs.hspec) (hsPkgs.QuickCheck) ];
          };
        };
      };
    }