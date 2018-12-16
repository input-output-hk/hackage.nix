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
        name = "string-isos";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fresheyeball@gmail.com";
      author = "Isaac Shapira";
      homepage = "";
      url = "";
      synopsis = "Tools for working with isomorphisms of strings";
      description = "Haskell has 5 common string types, Text, Lazy Text, ByteString, Lazy ByteString, and String ([Char]). Assuming utf8 encoding, we can make the pain of these conflicts much less via polymorphism.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.mono-traversable)
          (hsPkgs.type-iso)
          (hsPkgs.safe)
        ];
      };
    };
  }