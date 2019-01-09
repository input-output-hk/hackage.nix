{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hxt-filter"; version = "8.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2005-8 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "";
      homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
      url = "";
      synopsis = "A collection of tools for processing XML with Haskell (Filter variant).";
      description = "The Haskell XML Toolbox bases on the ideas of HaXml and HXML. This package is a compatibitlity package for old software working with the filter approach like in HaXml. For new projects it's recomended to use the arrow based library (hxt).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.parsec)
          (hsPkgs.HTTP)
          (hsPkgs.HUnit)
          (hsPkgs.network)
          (hsPkgs.hxt)
          ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.process)
            ]
          else [ (hsPkgs.base) ]);
        };
      };
    }