{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "http-client-auth"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "miguelimo38@yandex.ru";
      author = "Miguel Mitrofanov";
      homepage = "";
      url = "";
      synopsis = "HTTP authorization (both basic and digest) done right";
      description = "Multiple challenges aren't implemented. Authentication-Info header isn't either.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.base64-string)
          (hsPkgs.transformers)
          (hsPkgs.crypto-conduit)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.pureMD5)
          (hsPkgs.http-conduit)
          (hsPkgs.resourcet)
          (hsPkgs.http-client)
          ];
        };
      };
    }