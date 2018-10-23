{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "network-socket-options";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Joseph Adams 2012";
      maintainer = "joeyadams3.14159@gmail.com";
      author = "Joey Adams";
      homepage = "https://github.com/joeyadams/haskell-network-socket-options";
      url = "";
      synopsis = "Type-safe, portable alternative to getSocketOption/setSocketOption";
      description = "The network package provides getSocketOption and setSocketOption functions.\nThese work fine for socket options represented using the @int@ type\n(namely, all boolean options, and a few quantity options).  However, it\ndoesn't work for, say, @SO_LINGER@, @SO_RCVTIMEO@, and @SO_SNDTIMEO@, as\nthese use different, platform-specific representations.\n\nThis package implements the getters and setters as separate functions.  At\nthe moment, it only provides socket options that are available for both\nUnix and Windows.";
      buildType = "Simple";
    };
    components = {
      "network-socket-options" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }