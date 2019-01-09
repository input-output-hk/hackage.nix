{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.8.0.4";
      identifier = { name = "network-info"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jacob@stanley.io";
      author = "Jacob Stanley";
      homepage = "http://github.com/jystic/network-info";
      url = "";
      synopsis = "Access the local computer's basic network configuration";
      description = "This library provides simple read-only access to the local computer's\nnetworking configuration. It is currently capable of getting a list of\nall the network interfaces and their respective IPv4, IPv6 and MAC\naddresses.\n\nThe executable 'test-network-info' will only be built if the flag 'test'\nhas been set.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
        libs = (pkgs.lib).optionals (!system.isLinux) ((pkgs.lib).optional (system.isWindows) (pkgs."iphlpapi"));
        };
      exes = {
        "test-network-info" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs.base)
            (hsPkgs.network-info)
            ];
          };
        };
      };
    }