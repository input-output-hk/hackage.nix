{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "katip-datadog"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Soostone Inc, 2018";
      maintainer = "michael.xavier@soostone.com";
      author = "Michael Xavier";
      homepage = "https://github.com/Soostone/katip";
      url = "";
      synopsis = "Datadog scribe for the Katip logging framework";
      description = "See README.md for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.katip)
          (hsPkgs.text)
          (hsPkgs.connection)
          (hsPkgs.resource-pool)
          (hsPkgs.time)
          (hsPkgs.binary)
          (hsPkgs.network)
          (hsPkgs.safe-exceptions)
          (hsPkgs.retry)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.katip)
            (hsPkgs.katip-datadog)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.containers)
            (hsPkgs.safe-exceptions)
            (hsPkgs.async)
            (hsPkgs.attoparsec)
            (hsPkgs.text)
            ];
          };
        };
      };
    }