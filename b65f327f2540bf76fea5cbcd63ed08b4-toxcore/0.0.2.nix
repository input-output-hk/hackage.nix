{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "toxcore";
        version = "0.0.2";
      };
      license = "AGPL-3.0-only";
      copyright = "© 2016 iphy";
      maintainer = "iphy";
      author = "iphy";
      homepage = "https://toktok.github.io";
      url = "";
      synopsis = "Haskell bindings to the C reference implementation of Tox";
      description = "Haskell bindings to the C reference implementation of Tox.\n\nSee <https://github.com/TokTok/toxcore>.";
      buildType = "Simple";
    };
    components = {
      "toxcore" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-arbitrary)
          (hsPkgs.data-default-class)
          (hsPkgs.saltine)
        ];
        libs = [ (pkgs."toxcore") ];
      };
      tests = {
        "testsuite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.data-default-class)
            (hsPkgs.hspec)
            (hsPkgs.saltine)
            (hsPkgs.toxcore)
          ];
        };
      };
    };
  }