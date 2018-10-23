{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "basex-client";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "matthijssteen1990@gmail.com";
      author = "Matthijs Steen";
      homepage = "";
      url = "";
      synopsis = "A BaseX client for Haskell";
      description = "A BaseX client library for Haskell that connects to the BaseX server using a socket. BaseX is a light-weight, high-performance and scalable XML Database written in Java.";
      buildType = "Simple";
    };
    components = {
      "basex-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.pureMD5)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }