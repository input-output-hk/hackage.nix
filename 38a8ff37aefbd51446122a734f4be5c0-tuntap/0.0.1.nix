{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tuntap";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "John Van Enk <vanenkj@gmail.com>";
        author = "John Van Enk <vanenkj@gmail.com>";
        homepage = "";
        url = "http://github.com/sw17ch/tuntap";
        synopsis = "Interface to TUN/TAP drivers.";
        description = "TUN/TAP is a virtual network adapter supported by serveral\noperating systems.";
        buildType = "Simple";
      };
      components = {
        tuntap = {
          depends  = ([
            hsPkgs.base
            hsPkgs.bytestring
          ] ++ pkgs.lib.optional system.isLinux hsPkgs.unix) ++ pkgs.lib.optional (system.isOsx || system.isFreebsd) hsPkgs.unix;
          libs = pkgs.lib.optionals system.isWindows [
            pkgs.Iphlpapi
            pkgs.ws2_32
          ];
        };
      };
    }