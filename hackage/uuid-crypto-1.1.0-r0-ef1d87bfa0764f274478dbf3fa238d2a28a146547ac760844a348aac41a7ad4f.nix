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
        name = "uuid-crypto";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aethoago@141.li";
      author = "Gregor Kleen";
      homepage = "";
      url = "";
      synopsis = "Reversable and secure encoding of object ids as uuids";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cryptoids-types)
          (hsPkgs.cryptoids)
          (hsPkgs.uuid)
          (hsPkgs.cryptonite)
          (hsPkgs.binary)
          (hsPkgs.memory)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
        ];
      };
    };
  }