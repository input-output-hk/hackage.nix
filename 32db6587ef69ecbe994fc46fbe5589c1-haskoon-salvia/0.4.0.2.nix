{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "haskoon-salvia";
          version = "0.4.0.2";
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
        "haskoon-salvia" = {
          depends  = [
            hsPkgs.base
            hsPkgs.HTTP
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.hslogger
            hsPkgs.network
            hsPkgs.haskoon
            hsPkgs.salvia
            hsPkgs.salvia-protocol
            hsPkgs.fclabels
            hsPkgs.cgi
            hsPkgs.mtl
            hsPkgs.monads-fd
          ];
        };
      };
    }