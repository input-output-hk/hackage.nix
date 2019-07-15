{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-source-gen"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Google LLC";
      maintainer = "judahjacobson@google.com";
      author = "Judah Jacobson";
      homepage = "https://github.com/google/ghc-source-gen#readme";
      url = "";
      synopsis = "Constructs Haskell syntax trees for the GHC API.";
      description = "@ghc-source-gen@ is a library for generating Haskell source code.\nIt uses the <https://hackage.haskell.org/package/ghc ghc> library\nto support recent language extensions, and provides a simple, consistent\ninterface across several major versions of GHC.\n\nTo get started, take a look at the \"GHC.SourceGen\" module.\n\nFor more information, please see the <https://github.com/google/ghc-source-gen README>.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.ghc) ]; };
      tests = {
        "pprint_examples" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc-source-gen)
            ];
          };
        "pprint_test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc-source-gen)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      };
    }