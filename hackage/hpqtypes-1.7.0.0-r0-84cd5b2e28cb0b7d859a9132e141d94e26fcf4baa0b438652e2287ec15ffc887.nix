{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "hpqtypes"; version = "1.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Scrive AB";
      maintainer = "Andrzej Rybczak <andrzej@rybczak.net>,\nJonathan Jouty <jonathan@scrive.com>,\nMikhail Glushenkov <mikhail@scrive.com>";
      author = "Scrive AB";
      homepage = "https://github.com/scrive/hpqtypes";
      url = "";
      synopsis = "Haskell bindings to libpqtypes";
      description = "Efficient and easy-to-use bindings to (slightly modified)\n@libpqtypes@, a @libpq@ extension that adds support\nfor a binary transport format and composite types.\n\nSince modified @libpqtypes@ is used, its source\ncode is bundled along with the bindings. The\ndifferences between verbatim @libpqtypes@ and the\none used by this package:\n\n* Per-thread global error structures were replaced by\nexplicit passing of these structures around so that\nthere is no need to use bound threads.\n\n* Handlers that take values to be put into the\ndatabase were modified to always expect\npointers to objects, as opposed to previous\nsituation where primitives were being taken by\nvalue (which was convenient if the library was\nused directly from C, but created inconsistency\nproblems while trying to define bindings in a\nsensible way).\n\nExamples can be found in the\n<https://github.com/scrive/hpqtypes/tree/master/examples examples>\ndirectory.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.async)
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
          (hsPkgs.text-show)
          ];
        libs = [ (pkgs."pq") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
          ];
        };
      tests = {
        "hpqtypes-tests" = {
          depends = [
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