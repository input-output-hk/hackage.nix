{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { doctest = true; };
    package = {
      specVersion = "1.16";
      identifier = {
        name = "jose-jwt";
        version = "0.7.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Luke Taylor <tekul.hs@gmail.com>";
      author = "Luke Taylor <tekul.hs@gmail.com>";
      homepage = "http://github.com/tekul/jose-jwt";
      url = "";
      synopsis = "JSON Object Signing and Encryption Library";
      description = "\nAn implementation of the JOSE suite of IETF standards\nand the closely related JWT (JSON web token) spec\n(<https://tools.ietf.org/html/rfc7519/>).\n\nBoth signed and encrypted JWTs are supported, as well as simple\nJWK keys.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.either)
          (hsPkgs.memory)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.jose-jwt)
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.either)
            (hsPkgs.memory)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
        "doctests" = {
          depends = pkgs.lib.optionals (!(!flags.doctest)) [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.cryptonite)
          ];
        };
      };
      benchmarks = {
        "bench-jwt" = {
          depends = [
            (hsPkgs.jose-jwt)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.cryptonite)
          ];
        };
      };
    };
  }