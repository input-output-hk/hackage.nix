{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "haskoon-httpspec";
        version = "0.5.0.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "David Leuschner <leuschner@factisresearch.com>, Dirk Spoeri <spoeri@factisresearch.com>, Stefan Wehr <wehr@factisresearch.com>";
      author = "David Leuschner <leuschner@factisresearch.com>, Dirk Spoeri <spoeri@factisresearch.com>, Stefan Wehr <wehr@factisresearch.com>";
      homepage = "";
      url = "";
      synopsis = "Integrating HttpSpec with Haskoon";
      description = "Allows to send and receive Http requests using the\nHttpSpec specifications.";
      buildType = "Simple";
    };
    components = {
      "haskoon-httpspec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.hslogger)
          (hsPkgs.network)
          (hsPkgs.haskoon)
          (hsPkgs.bidispec)
          (hsPkgs.httpspec)
        ];
      };
    };
  }