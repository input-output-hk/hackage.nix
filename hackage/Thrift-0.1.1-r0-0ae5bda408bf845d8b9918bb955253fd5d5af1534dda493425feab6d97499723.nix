{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "Thrift";
        version = "0.1.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "thrift-user-subscribe@incubator.apache.org";
      author = "";
      homepage = "http://incubator.apache.org/thrift";
      url = "";
      synopsis = "Thrift library package";
      description = "The Thrift Haskell package that shipped with Thrift v.0.3.0, released under the Apache 2.0 license.";
      buildType = "Simple";
    };
    components = {
      "Thrift" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.ghc-prim)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.HTTP)
        ];
      };
    };
  }