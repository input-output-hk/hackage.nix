{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "model"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Pasqualino `Titto` Assini";
      maintainer = "tittoassini@gmail.com";
      author = "Pasqualino `Titto` Assini";
      homepage = "http://github.com/tittoassini/model";
      url = "";
      synopsis = "Derive a model of a data type using Generics";
      description = "See the github homepage for a tutorial";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.pretty)
          (hsPkgs.transformers)
          (hsPkgs.ListLike)
          ];
        };
      tests = {
        "model-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.model)
            ];
          };
        };
      };
    }