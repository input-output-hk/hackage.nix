{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "rethinkdb";
        version = "0.1.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Etienne Laurin <etienne@atnnn.com>";
      author = "Etienne Laurin";
      homepage = "http://code.atnnn.com/projects/haskell-rethinkdb";
      url = "";
      synopsis = "RethinkDB client library for haskell";
      description = "This library is modelled upon the official RethinkDB API for\nPython and Javascript.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.protocol-buffers)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.attoparsec)
          (hsPkgs.data-default)
          (hsPkgs.network)
          (hsPkgs.ghc-prim)
          (hsPkgs.mtl)
        ];
      };
    };
  }