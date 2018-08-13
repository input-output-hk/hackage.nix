{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cryptocipher";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "";
      url = "";
      synopsis = "Symmetrical Block and Stream Ciphers";
      description = "Symmetrical Block and Stream Ciphers";
      buildType = "Simple";
    };
    components = {
      "cryptocipher" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.haskell98)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "Tests" = {
          depends  = pkgs.lib.optionals (_flags.test) [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }