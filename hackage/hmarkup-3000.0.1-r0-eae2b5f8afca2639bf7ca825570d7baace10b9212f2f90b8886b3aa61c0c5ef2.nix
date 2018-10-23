{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hmarkup";
        version = "3000.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert 2006";
      maintainer = "bjorn@bringert.net";
      author = "Bjorn Bringert";
      homepage = "";
      url = "";
      synopsis = "Simple wikitext-like markup format implementation.";
      description = "This package implements a simple extensible wikitext-like markup format.\nCurrently the only implemented output format is XHTML.";
      buildType = "Simple";
    };
    components = {
      "hmarkup" = {
        depends  = [
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.network)
          (hsPkgs.xhtml)
        ] ++ (if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }