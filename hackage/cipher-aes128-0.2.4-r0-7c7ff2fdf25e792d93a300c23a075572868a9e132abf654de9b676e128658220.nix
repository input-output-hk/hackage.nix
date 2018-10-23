{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "cipher-aes128";
        version = "0.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "Thomas M. DuBuisson";
      maintainer = "thomas.dubuisson@gmail.com";
      author = "Thomas M. DuBuisson, Vincent Hanquez (See AUTHORS file)";
      homepage = "https://github.com/TomMD/cipher-aes128";
      url = "";
      synopsis = "AES128 using AES-NI when available.";
      description = "AES128 with crypto-api instances and a trampoline between Vincent Hanquez's C-based and x86 NI-based AES.  Patches welcome to add additional high-performance backends (ARM?)";
      buildType = "Custom";
    };
    components = {
      "cipher-aes128" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.crypto-api)
          (hsPkgs.tagged)
          (hsPkgs.cereal)
        ];
      };
    };
  }