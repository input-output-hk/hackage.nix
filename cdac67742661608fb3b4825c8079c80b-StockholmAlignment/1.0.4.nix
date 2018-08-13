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
      specVersion = "1.8";
      identifier = {
        name = "StockholmAlignment";
        version = "1.0.4";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "egg@tbi.univie.ac.at";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "Libary for Stockholm aligmnent format";
      description = "Libary containing parsing and visualisation functions and datastructures for Stockholm aligmnent format";
      buildType = "Simple";
    };
    components = {
      "StockholmAlignment" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.diagrams-lib)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.ParsecTools)
          (hsPkgs.diagrams-cairo)
          (hsPkgs.filepath)
          (hsPkgs.colour)
          (hsPkgs.directory)
          (hsPkgs.either-unwrap)
          (hsPkgs.SVGFonts)
        ];
      };
    };
  }