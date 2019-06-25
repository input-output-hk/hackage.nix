{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "run-st"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/run-st";
      url = "";
      synopsis = "runST without boxing penalty";
      description = "This package provides specializations of `runST` that avoid a needless\ndata-constructor allocation for the returned value.\nIf <https://gitlab.haskell.org/ghc/ghc/issues/15127 issue 15127> is\nresolved, this package will no longer be necessary.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.primitive-unlifted)
          ];
        };
      };
    }