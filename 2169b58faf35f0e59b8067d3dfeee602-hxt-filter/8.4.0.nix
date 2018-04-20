{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hxt-filter";
          version = "8.4.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2005-2009 Uwe Schmidt";
        maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
        author = "";
        homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
        url = "";
        synopsis = "A collection of tools for processing XML with Haskell (Filter variant).";
        description = "The Haskell XML Toolbox bases on the ideas of HaXml and HXML. This package is a compatibitlity package for old software working with the filter approach like in HaXml. For new projects it's recomended to use the arrow based library (hxt).";
        buildType = "Simple";
      };
      components = {
        hxt-filter = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.parsec
            hsPkgs.HUnit
            hsPkgs.network
            hsPkgs.HTTP
            hsPkgs.process
            hsPkgs.hxt
          ];
        };
      };
    }