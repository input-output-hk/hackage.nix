{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "backblaze-b2-hs"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Aditya Manthramurthy";
      maintainer = "~donatello/backblaze-b2-hs-dev@lists.sr.ht";
      author = "Aditya Manthramurthy";
      homepage = "https://git.sr.ht/~donatello/backblaze-b2-hs";
      url = "";
      synopsis = "A client library to access Backblaze B2 cloud storage in Haskell.";
      description = "A client library to access Backblaze B2 Cloud storage in Haskell. It\nprovides a high-level API to access Backblaze B2 storage allowing\nfor quick application developlment.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.formatting)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.protolude)
          (hsPkgs.req)
          (hsPkgs.req-conduit)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unliftio)
          (hsPkgs.unliftio-core)
          ];
        };
      exes = {
        "backblaze-b2-hs" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.backblaze-b2-hs)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.formatting)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.protolude)
            (hsPkgs.req)
            (hsPkgs.req-conduit)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio)
            (hsPkgs.unliftio-core)
            ];
          };
        };
      tests = {
        "backblaze-b2-hs-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.backblaze-b2-hs)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.formatting)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.protolude)
            (hsPkgs.req)
            (hsPkgs.req-conduit)
            (hsPkgs.scientific)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio)
            (hsPkgs.unliftio-core)
            ];
          };
        };
      };
    }