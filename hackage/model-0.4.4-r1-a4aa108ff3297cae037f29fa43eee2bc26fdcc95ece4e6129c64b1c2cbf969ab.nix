{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "model"; version = "0.4.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Pasqualino `Titto` Assini";
      maintainer = "tittoassini@gmail.com";
      author = "Pasqualino `Titto` Assini";
      homepage = "http://github.com/tittoassini/model";
      url = "";
      synopsis = "Derive a model of a data type using Generics";
      description = "See the <http://github.com/tittoassini/model online tutorial>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.either)
          (hsPkgs.deepseq)
          (hsPkgs.transformers)
          (hsPkgs.pretty)
          (hsPkgs.convertible)
          ];
        };
      tests = {
        "model-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.model)
            (hsPkgs.ghc-prim)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        "model-doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.filemanip)
            (hsPkgs.model)
            ];
          };
        };
      };
    }