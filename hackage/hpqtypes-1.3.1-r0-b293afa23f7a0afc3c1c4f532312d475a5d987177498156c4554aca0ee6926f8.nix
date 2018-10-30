{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { tests = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hpqtypes";
        version = "1.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrzej Rybczak <andrzej@scrive.com>";
      author = "Scrive";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to libpqtypes";
      description = "Efficient and easy-to-use bindings to (slightly modified)\nlibpqtypes, lipq extension that adds support for binary\ntransport format and composite types.\n\nSince modified libpqtypes is used, its source code is bundled\nalong with the bindings. The differences between verbatim\nlibpqtypes and the one used by this package:\n\n* per-thread global error structures were replaced by explicit\npassing of these structures around so that there is no need\nto use bound threads.\n\n* handlers that take values to be put into the database were\nmodified to always expect pointers to objects, as opposed\nto previous situation where primitives were being taken by\nvalue (which was convenient if the library was used directly\nfrom C, but created inconsistency problems while trying to\ndefine bindings in a sensible way).\n\nExamples can be found in the <https://github.com/scrive/hpqtypes/tree/master/examples examples> directory.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.vector)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
          (hsPkgs.resource-pool)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
        ];
        libs = [ (pkgs."pq") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      exes = {
        "tests" = {
          depends  = [
            (hsPkgs.hpqtypes)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.transformers-base)
            (hsPkgs.monad-control)
            (hsPkgs.lifted-base)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.random)
            (hsPkgs.exceptions)
          ];
        };
      };
    };
  }