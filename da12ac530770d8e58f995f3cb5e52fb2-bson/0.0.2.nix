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
        name = "bson";
        version = "0.0.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Tony Hannan <tony@10gen.com>";
      author = "Tony Hannan";
      homepage = "http://github.com/TonyGen/bson-haskell";
      url = "";
      synopsis = "BSON documents are JSON-like objects with a standard binary encoding";
      description = "BSON (short for Binary JSON) is a binary-encoded serialization of JSON-like documents.\n\nThis implements version 1.0 of the BSON spec, which is defined at <http://bsonspec.org>.";
      buildType = "Simple";
    };
    components = {
      "bson" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.unix)
          (hsPkgs.network)
          (hsPkgs.nano-md5)
          (hsPkgs.binary)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.compact-string-fix)
          (hsPkgs.mtl)
        ];
      };
    };
  }