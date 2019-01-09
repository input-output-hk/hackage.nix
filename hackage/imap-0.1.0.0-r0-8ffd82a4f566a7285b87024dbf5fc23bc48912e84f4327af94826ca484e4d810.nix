{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "imap"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michal@monad.cat";
      author = "Michal Kawalec";
      homepage = "";
      url = "";
      synopsis = "An efficient IMAP client library";
      description = "A fairly low-level, efficient, easy to use, streaming IMAP library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.connection)
          (hsPkgs.bytestring)
          (hsPkgs.random)
          (hsPkgs.word8)
          (hsPkgs.rolling-queue)
          (hsPkgs.stm)
          (hsPkgs.either)
          (hsPkgs.hslogger)
          (hsPkgs.transformers)
          (hsPkgs.list-t)
          (hsPkgs.monadIO)
          (hsPkgs.derive)
          (hsPkgs.data-default)
          (hsPkgs.stm-delay)
          (hsPkgs.exceptions)
          ];
        };
      tests = {
        "imap-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.text)
            (hsPkgs.connection)
            (hsPkgs.bytestring)
            (hsPkgs.random)
            (hsPkgs.word8)
            (hsPkgs.rolling-queue)
            (hsPkgs.stm)
            (hsPkgs.either)
            (hsPkgs.hslogger)
            (hsPkgs.transformers)
            (hsPkgs.list-t)
            (hsPkgs.monadIO)
            (hsPkgs.derive)
            (hsPkgs.data-default)
            (hsPkgs.stm-delay)
            (hsPkgs.exceptions)
            (hsPkgs.tasty)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }