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
      specVersion = "0";
      identifier = {
        name = "hascat-system";
        version = "0.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Björn Teegen 2006, Florian Micheler 2010";
      maintainer = "fmi@informatik.uni-kiel.de";
      author = "Björn Teegen, Florian Micheler";
      homepage = "";
      url = "";
      synopsis = "Hascat System Package";
      description = "Modules for programming Hascat system applications";
      buildType = "Simple";
    };
    components = {
      "hascat-system" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hascat-lib)
          (hsPkgs.network)
          (hsPkgs.plugins)
          (hsPkgs.HaXml)
          (hsPkgs.HTTP)
          (hsPkgs.old-time)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.unix)
        ];
      };
    };
  }