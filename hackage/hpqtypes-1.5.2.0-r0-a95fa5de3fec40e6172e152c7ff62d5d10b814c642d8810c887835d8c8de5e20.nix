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
      specVersion = "1.18";
      identifier = {
        name = "hpqtypes";
        version = "1.5.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Scrive AB";
      maintainer = "Andrzej Rybczak <andrzej@rybczak.net>,\nJonathan Jouty <jonathan@scrive.com>,\nMikhail Glushenkov <mikhail@scrive.com>";
      author = "Scrive AB";
      homepage = "https://github.com/scrive/hpqtypes";
      url = "";
      synopsis = "Haskell bindings to libpqtypes";
      description = "Efficient and easy-to-use bindings to (slightly modified)\nlibpqtypes, lipq extension that adds support for binary\ntransport format and composite types.\n\nSince modified libpqtypes is used, its source code is bundled\nalong with the bindings. The differences between verbatim\nlibpqtypes and the one used by this package:\n\n* per-thread global error structures were replaced by\nexplicit passing of these structures around so that\nthere is no need to use bound threads.\n\n* handlers that take values to be put into the database were\nmodified to always expect pointers to objects, as opposed\nto previous situation where primitives were being taken by\nvalue (which was convenient if the library was used\ndirectly from C, but created inconsistency problems\nwhile trying to define bindings in a sensible way).\n\nExamples can be found in the\n<https://github.com/scrive/hpqtypes/tree/master/examples examples>\ndirectory.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.semigroups)
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
          (hsPkgs.data-default-class)
          (hsPkgs.text-show)
        ];
        libs = [ (pkgs."pq") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      tests = {
        "hpqtypes-tests" = {
          depends  = [
            (hsPkgs.hpqtypes)
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.scientific)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            (hsPkgs.text-show)
            (hsPkgs.time)
            (hsPkgs.transformers-base)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }