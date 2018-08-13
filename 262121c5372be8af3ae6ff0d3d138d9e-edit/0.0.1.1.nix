{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      arbitrary_instance = false;
      comonad_instance = false;
      tutorial = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "edit";
        version = "0.0.1.1";
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
        ] ++ pkgs.lib.optional (_flags.arbitrary_instance) (hsPkgs.QuickCheck)) ++ pkgs.lib.optional (_flags.comonad_instance) (hsPkgs.comonad)) ++ pkgs.lib.optionals (_flags.tutorial) [
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