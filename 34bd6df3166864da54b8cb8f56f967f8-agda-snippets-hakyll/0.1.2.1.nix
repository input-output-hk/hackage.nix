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
        name = "agda-snippets-hakyll";
        version = "0.1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Liam O'Connor, 2015";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor";
      homepage = "https://github.com/liamoc/agda-snippets#readme";
      url = "";
      synopsis = "Literate Agda support using agda-snippets, for Hakyll pages.";
      description = "This library provides basic functions to use in Hakyll web-pages to generate\ncolourised and hyperlinked Agda source code snippets for literate Agda documents.\n\nIt makes use of the @agda-snippets@ library and will (hopefully) be kept up to\ndate with the latest Agda versions.";
      buildType = "Simple";
    };
    components = {
      "agda-snippets-hakyll" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.agda-snippets)
          (hsPkgs.network-uri)
          (hsPkgs.hakyll)
          (hsPkgs.pandoc-types)
          (hsPkgs.pandoc)
          (hsPkgs.filepath)
          (hsPkgs.directory)
        ];
      };
    };
  }