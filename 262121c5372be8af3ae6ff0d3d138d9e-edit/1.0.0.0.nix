{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      no_arbitrary = false;
      no_comonad = false;
      tutorial = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "edit";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Varun Gandhi 2018";
      maintainer = "Varun Gandhi <theindigamer15@gmail.com>";
      author = "Varun Gandhi <theindigamer15@gmail.com>";
      homepage = "https://github.com/theindigamer/edit";
      url = "";
      synopsis = "A monad for rewriting things.";
      description = "Edit is a monad for rewriting things.";
      buildType = "Simple";
    };
    components = {
      "edit" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.transformers)
        ] ++ pkgs.lib.optional (!_flags.no_arbitrary) (hsPkgs.QuickCheck)) ++ pkgs.lib.optional (!_flags.no_comonad) (hsPkgs.comonad)) ++ pkgs.lib.optionals (_flags.tutorial) [
          (hsPkgs.uniplate)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "test-edit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.edit)
            (hsPkgs.doctest)
            (hsPkgs.QuickCheck)
            (hsPkgs.uniplate)
            (hsPkgs.comonad)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }