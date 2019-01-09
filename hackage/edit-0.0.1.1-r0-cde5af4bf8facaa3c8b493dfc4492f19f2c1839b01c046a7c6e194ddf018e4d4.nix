{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      arbitrary_instance = false;
      comonad_instance = false;
      tutorial = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "edit"; version = "0.0.1.1"; };
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
      "library" = {
        depends = (([
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.transformers)
          ] ++ (pkgs.lib).optional (flags.arbitrary_instance) (hsPkgs.QuickCheck)) ++ (pkgs.lib).optional (flags.comonad_instance) (hsPkgs.comonad)) ++ (pkgs.lib).optionals (flags.tutorial) [
          (hsPkgs.uniplate)
          (hsPkgs.containers)
          ];
        };
      tests = {
        "test-edit" = {
          depends = [
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