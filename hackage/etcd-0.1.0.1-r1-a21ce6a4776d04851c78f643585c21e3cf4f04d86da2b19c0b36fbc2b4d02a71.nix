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
        name = "etcd";
        version = "0.1.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "tomas.carnecky@gmail.com";
      author = "Tomas Carnecky";
      homepage = "";
      url = "";
      synopsis = "Client for etcd, a highly-available key value store";
      description = "See https://github.com/coreos/etcd";
      buildType = "Simple";
    };
    components = {
      "etcd" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-conduit)
        ];
      };
      exes = {
        "etcd-client" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.http-conduit)
          ];
        };
      };
    };
  }