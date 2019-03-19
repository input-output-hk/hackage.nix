{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "katip-logzio"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Soostone Inc, 2018";
      maintainer = "michael.xavier@soostone.com";
      author = "Michael Xavier";
      homepage = "https://github.com/Soostone/katip";
      url = "";
      synopsis = "Logz.IO scribe for the Katip logging framework";
      description = "See README.md for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.katip)
          (hsPkgs.stm)
          (hsPkgs.async)
          (hsPkgs.time)
          (hsPkgs.aeson)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.uri-bytestring)
          (hsPkgs.errors)
          (hsPkgs.safe-exceptions)
          (hsPkgs.retry)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.scientific)
          (hsPkgs.stm-chans)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.katip)
            (hsPkgs.katip-logzio)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-hunit)
            (hsPkgs.hedgehog)
            (hsPkgs.vector)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.template-haskell)
            (hsPkgs.aeson)
            (hsPkgs.scientific)
            (hsPkgs.unix)
            (hsPkgs.hostname)
            (hsPkgs.scotty)
            (hsPkgs.stm)
            (hsPkgs.async)
            (hsPkgs.safe-exceptions)
            (hsPkgs.uri-bytestring)
            (hsPkgs.warp)
            (hsPkgs.http-types)
            ];
          };
        };
      };
    }