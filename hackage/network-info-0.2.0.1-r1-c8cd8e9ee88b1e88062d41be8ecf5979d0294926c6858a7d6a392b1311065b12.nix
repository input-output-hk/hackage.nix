{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "network-info"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jacob Stanley <jacob@stanley.io>";
      author = "Jacob Stanley";
      homepage = "http://github.com/jystic/network-info";
      url = "";
      synopsis = "Access the local computer's basic network configuration";
      description = "This library provides simple read-only access to the local computer's\nnetworking configuration. It is currently capable of getting a list of\nall the network interfaces and their respective IPv4, IPv6 and MAC\naddresses.\n\nnetwork-info has been tested and is known to work on Ubuntu 10.10, Mac\nOS X 10.6.4 and Windows XP.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = pkgs.lib.optionals (!(system.isLinux || system.isOsx)) (pkgs.lib.optional (system.isWindows) (pkgs."iphlpapi" or (errorHandler.sysDepError "iphlpapi")));
        buildable = if system.isLinux || system.isOsx
          then true
          else if system.isWindows then true else false;
      };
    };
  }