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
        name = "mandrill";
        version = "0.5.3.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "alfredo.dinapoli@gmail.com";
      author = "Alfredo Di Napoli";
      homepage = "";
      url = "";
      synopsis = "Library for interfacing with the Mandrill JSON API";
      description = "Pure Haskell client for the Mandrill JSON API";
      buildType = "Simple";
    };
    components = {
      "mandrill" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.text)
          (hsPkgs.http-types)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.blaze-html)
          (hsPkgs.QuickCheck)
          (hsPkgs.mtl)
          (hsPkgs.time)
          (hsPkgs.email-validate)
          (hsPkgs.old-locale)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "mandrill-tests" = {
          depends  = [
            (hsPkgs.mandrill)
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.text)
          ];
        };
      };
    };
  }