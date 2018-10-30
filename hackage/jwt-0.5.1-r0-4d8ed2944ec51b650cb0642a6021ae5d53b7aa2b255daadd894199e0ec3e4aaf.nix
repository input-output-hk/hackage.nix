{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "jwt";
        version = "0.5.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "stefan@saasen.me";
      author = "Stefan Saasen";
      homepage = "https://bitbucket.org/ssaasen/haskell-jwt";
      url = "";
      synopsis = "JSON Web Token (JWT) decoding and encoding";
      description = "JSON Web Token (JWT) is a compact URL-safe means of representing claims to be transferred between two parties.\n\nTo get started, see the documentation for the \"Web.JWT\" module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cryptohash)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.scientific)
          (hsPkgs.data-default)
          (hsPkgs.http-types)
          (hsPkgs.time)
          (hsPkgs.vector)
          (hsPkgs.semigroups)
        ] ++ [
          (hsPkgs.network-uri)
          (hsPkgs.network)
        ];
      };
      tests = {
        "testsuite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-th)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.lens-aeson)
            (hsPkgs.lens)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.cryptohash)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.scientific)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.data-default)
            (hsPkgs.http-types)
            (hsPkgs.time)
            (hsPkgs.vector)
            (hsPkgs.semigroups)
          ] ++ [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ];
        };
      };
    };
  }