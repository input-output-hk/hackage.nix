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
      specVersion = "1.6";
      identifier = {
        name = "attoparsec-binary";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Andrew Drake";
      maintainer = "adrake@adrake.org";
      author = "Andrew Drake";
      homepage = "";
      url = "";
      synopsis = "Binary processing extensions to Attoparsec.";
      description = "This package adds a collection of helper functions to make\nthe task dealing with binary data of varying endianness from within an\nAttoparsec parser easier.";
      buildType = "Simple";
    };
    components = {
      "attoparsec-binary" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }