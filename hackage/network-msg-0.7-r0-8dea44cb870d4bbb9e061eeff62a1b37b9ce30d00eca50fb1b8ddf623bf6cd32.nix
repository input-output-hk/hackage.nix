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
      specVersion = "1.6";
      identifier = {
        name = "network-msg";
        version = "0.7";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Lana Black <lanablack@amok.cc>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Recvmsg and sendmsg bindings.";
      description = "Bindings to sendmsg and recvmsg POSIX functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.unix)
        ];
      };
    };
  }