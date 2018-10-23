{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "hascat-lib";
        version = "0.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Björn Teegen 2006, Florian Micheler 2010";
      maintainer = "fmi@informatik.uni-kiel.de";
      author = "Björn Teegen, Florian Micheler";
      homepage = "";
      url = "";
      synopsis = "Hascat Package";
      description = "Library for programming Hascat applications";
      buildType = "Simple";
    };
    components = {
      "hascat-lib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.HTTP)
          (hsPkgs.haskell98)
          (hsPkgs.HaXml)
          (hsPkgs.html)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.xhtml)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          (hsPkgs.plugins)
        ];
      };
    };
  }