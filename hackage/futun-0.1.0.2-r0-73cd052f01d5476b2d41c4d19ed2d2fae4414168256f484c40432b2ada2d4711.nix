{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { static = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "futun"; version = "0.1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Jussi Mäki <joamaki@gmail.com>";
      author = "Jussi Mäki";
      homepage = "";
      url = "";
      synopsis = "Simple IP-over-UDP tunnel using TUNTAP";
      description = "Futun is a simple IP-over-UDP tunnel for\nminimal-setup tunneling. It uses the TUN/TAP\n<http://en.wikipedia.org/wiki/TUN/TAP> device and\nworks on GNU/Linux and Mac OS X.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "futun" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            ];
          };
        };
      };
    }