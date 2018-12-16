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
      specVersion = "1.10";
      identifier = {
        name = "uuid-le";
        version = "0.2014.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "rhymoid@gmail.com";
      author = "Stijn van Drongelen";
      homepage = "";
      url = "";
      synopsis = "Universally Unique Identifiers with little-endian-ish encoding tools";
      description = "This library extends @uuid@ with tools to encode and decode Universally\nUnique Identifiers in the little-endian-ish encoding, which was popularized\nby Microsoft.\n\nSome systems, for instance UEFI, chose to use this odd format instead of\nthe simple encoding specified in RFC 4122.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.uuid)
        ];
      };
    };
  }