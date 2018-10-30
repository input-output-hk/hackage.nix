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
      specVersion = "1.12";
      identifier = {
        name = "direct-binary-files";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 Irene Knapp";
      maintainer = "irene.knapp@icloud.com";
      author = "Irene Knapp <irene.knapp@icloud.com>";
      homepage = "http://ireneknapp.com/software/";
      url = "";
      synopsis = "Serialization and deserialization monads for streams and ByteStrings.";
      description = "Serialization and deserialization monads which can work on either streams\nor ByteStrings, running under IO in the former case and as pure functions\nin the latter.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
        ];
      };
    };
  }