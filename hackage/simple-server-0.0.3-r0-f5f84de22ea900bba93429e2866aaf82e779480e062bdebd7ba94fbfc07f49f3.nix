{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "simple-server";
        version = "0.0.3";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jcollard@unm.edu";
      author = "Joseph Collard";
      homepage = "";
      url = "";
      synopsis = "Simple Server interface";
      description = "This library provides a very simple interface for creating a server that sends and recieves ByteString messages and attempts to remove concurrency so the programmer can focus on the functionality of the server. A simple ChatServer example is available in the Examples module";
      buildType = "Simple";
    };
    components = {
      "simple-server" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.concurrent-extra)
          (hsPkgs.hashtables)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.network)
          (hsPkgs.unbounded-delays)
        ];
      };
    };
  }