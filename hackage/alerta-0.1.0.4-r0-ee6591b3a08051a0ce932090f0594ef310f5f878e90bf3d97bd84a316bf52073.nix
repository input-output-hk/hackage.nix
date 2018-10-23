{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "alerta";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Mark Hopkins";
      maintainer = "markjohnhopkins@gmail.com";
      author = "Mark Hopkins";
      homepage = "https://github.com/mjhopkins/alerta-client";
      url = "";
      synopsis = "Bindings to the alerta REST API";
      description = "<http://alerta.io Alerta> is an alert monitoring tool developed by the\n<https://www.theguardian.com Guardian> newspaper\n\nThis package supplies bindings to the alerta REST API so that it can be used\nfrom Haskell.\n\nBuilt with <http://hackage.haskell.org/package/servant Servant>.";
      buildType = "Simple";
    };
    components = {
      "alerta" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.servant-server)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
    };
  }