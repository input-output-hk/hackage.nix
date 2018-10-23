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
        name = "criu-rpc";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "Stephen O'Brien";
      maintainer = "wayofthepie@gmail.com";
      author = "wayofthepie";
      homepage = "";
      url = "";
      synopsis = "CRIU RPC client.";
      description = "Low level client for the CRIU RPC API.";
      buildType = "Simple";
    };
    components = {
      "criu-rpc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.criu-rpc-types)
          (hsPkgs.lens-family)
          (hsPkgs.process)
          (hsPkgs.proto-lens)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.unix)
        ];
      };
    };
  }