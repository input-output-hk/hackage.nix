{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "serversession-backend-persistent";
        version = "1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa <felipe.lessa@gmail.com>";
      homepage = "https://github.com/yesodweb/serversession";
      url = "";
      synopsis = "Storage backend for serversession using persistent and an RDBMS.";
      description = "API docs and the README are available at <http://www.stackage.org/package/serversession-backend-persistent>";
      buildType = "Simple";
    };
    components = {
      "serversession-backend-persistent" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.path-pieces)
          (hsPkgs.persistent)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.serversession)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.path-pieces)
            (hsPkgs.persistent)
            (hsPkgs.persistent-template)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.hspec)
            (hsPkgs.monad-logger)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.persistent-postgresql)
            (hsPkgs.resource-pool)
            (hsPkgs.QuickCheck)
            (hsPkgs.serversession)
            (hsPkgs.serversession-backend-persistent)
          ];
        };
      };
    };
  }