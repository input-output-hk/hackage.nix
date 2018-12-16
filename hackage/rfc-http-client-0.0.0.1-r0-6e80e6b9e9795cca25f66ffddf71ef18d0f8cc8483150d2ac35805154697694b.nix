{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { production = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rfc-http-client";
        version = "0.0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "smokejumperit+rfc@gmail.com";
      author = "Robert Fischer";
      homepage = "https://github.com/RobertFischer/rfc#readme";
      url = "";
      synopsis = "The HTTP client extensions from the Robert Fischer Commons.";
      description = "Provides best-of-breed support for HTTP client calls in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.network-uri)
          (hsPkgs.rfc-prelude)
          (hsPkgs.scientific)
          (hsPkgs.servant-server)
          (hsPkgs.vector)
          (hsPkgs.wreq)
        ];
      };
    };
  }