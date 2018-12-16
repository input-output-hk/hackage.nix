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
      specVersion = "0";
      identifier = {
        name = "RefSerialize";
        version = "0.3.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "Write to and read from ByteStrings maintaining internal memory references";
      description = "Read, Show and Binary instances do not check for internal data references to the same address.\nAs a result, the data is duplicated when serialized. This is a waste of space in the filesystem\nand  also a waste of serialization time. but the worst consequence is that, when the serialized data is read,\nit allocates multiple copies for the same object when referenced multiple times. Because multiple referenced\ndata is very typical in a pure language such is Haskell, this means that the resulting data loose the beatiful\neconomy of space and processing time that referential transparency permits.\n\nIn this release the default \"(Read a, Show a) => Refserialize a\" has been removed.\n\nSee \"Data.RefSerialize\" for details";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hashtables)
        ];
      };
    };
  }