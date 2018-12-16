{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "u2f";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eugene@eugene4.com";
      author = "Eugene Butler";
      homepage = "https://github.com/EButlerIV/u2f";
      url = "";
      synopsis = "Haskell Universal Two Factor helper toolbox library thing";
      description = "Library useful for server-side U2F Registration and Signin flows.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cryptonite)
          (hsPkgs.binary)
          (hsPkgs.text)
          (hsPkgs.asn1-encoding)
          (hsPkgs.asn1-types)
          (hsPkgs.base64-bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "hspec-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.u2f)
            (hsPkgs.text)
            (hsPkgs.either-unwrap)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }