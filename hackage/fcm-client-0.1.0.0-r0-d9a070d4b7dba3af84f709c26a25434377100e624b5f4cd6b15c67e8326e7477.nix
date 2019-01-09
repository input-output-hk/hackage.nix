{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "fcm-client"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2018 Andrey Kartashov, 2018 Holmusk";
      maintainer = "hi@holmusk.com";
      author = "Andrey Kartashov, Holmusk";
      homepage = "https://github.com/holmusk/fcm-client#readme";
      url = "";
      synopsis = "Admin API for Firebase Cloud Messaging";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-casing)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      exes = {
        "fcm-client" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.data-default-class)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.fcm-client)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.resourcet)
            (hsPkgs.retry)
            (hsPkgs.optparse-applicative)
            (hsPkgs.stm-conduit)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.data-default-class)
            (hsPkgs.fcm-client)
            (hsPkgs.HUnit)
            (hsPkgs.lens)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            ];
          };
        };
      };
    }