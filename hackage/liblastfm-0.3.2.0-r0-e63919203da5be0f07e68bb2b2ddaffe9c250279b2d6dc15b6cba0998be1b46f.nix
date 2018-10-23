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
        name = "liblastfm";
        version = "0.3.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Matvey Aksenov <matvey.aksenov@gmail.com>";
      author = "Matvey Aksenov, Dmitry Malikov";
      homepage = "";
      url = "";
      synopsis = "Lastfm API interface";
      description = "Provides interface to Lastfm REST API, supports XML and JSON formats.";
      buildType = "Simple";
    };
    components = {
      "liblastfm" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.crypto-api)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.network)
          (hsPkgs.pureMD5)
          (hsPkgs.semigroups)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.void)
        ];
      };
    };
  }