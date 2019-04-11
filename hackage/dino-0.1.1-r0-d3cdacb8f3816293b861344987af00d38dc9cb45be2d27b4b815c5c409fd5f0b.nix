{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dino"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Mpowered Business Solutions";
      maintainer = "78emil@gmail.com";
      author = "Emil Axelsson";
      homepage = "https://github.com/emilaxelsson/dino";
      url = "";
      synopsis = "A convenient tagless EDSL";
      description = "For more information, see the\n<https://github.com/emilaxelsson/dino/blob/master/README.md README>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.errors)
          (hsPkgs.hashable)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.tree-view)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dino)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        "examples" = { depends = [ (hsPkgs.base) (hsPkgs.dino) ]; };
        };
      };
    }