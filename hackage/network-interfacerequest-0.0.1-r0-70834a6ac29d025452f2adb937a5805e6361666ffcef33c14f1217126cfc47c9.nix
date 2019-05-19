{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "network-interfacerequest"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrew Miller (andrew.miller@lanthaps.com)";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for the ifreq structure";
      description = "Haskell bindings for the ifreq structure used to query network status using ioctl";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.network)
          (hsPkgs.ioctl)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
          ];
        };
      };
    }