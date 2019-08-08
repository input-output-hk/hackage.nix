{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gothic"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 - Michel Boucey";
      maintainer = "michel.boucey@gmail.com";
      author = "Michel Boucey";
      homepage = "https://github.com/MichelBoucey/gothic";
      url = "";
      synopsis = "A Haskell Vault KVv2 secret engine client";
      description = "A Haskell HashiCorp Vault KVv2 secret engine client library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.connection)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.http-conduit)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          (hsPkgs.http-conduit)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.scientific)
          (hsPkgs.unix)
          (hsPkgs.vector)
          ];
        };
      };
    }