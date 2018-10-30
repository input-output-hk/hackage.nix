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
        name = "cryptoids";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aethoago@141.li";
      author = "Gregor Kleen";
      homepage = "";
      url = "";
      synopsis = "Reversable and secure encoding of object ids as a bytestring";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cryptoids-types)
          (hsPkgs.cryptonite)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.memory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.directory)
        ];
      };
    };
  }