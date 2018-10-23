{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.21";
      identifier = {
        name = "haskus-utils";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Sylvain Henry 2018";
      maintainer = "sylvain@haskus.fr";
      author = "Sylvain Henry";
      homepage = "http://www.haskus.org/system";
      url = "";
      synopsis = "Haskus utility modules";
      description = "Haskus utility modules. Reexport all other utility modules";
      buildType = "Simple";
    };
    components = {
      "haskus-utils" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskus-utils-types)
          (hsPkgs.haskus-utils-data)
          (hsPkgs.haskus-utils-variant)
          (hsPkgs.containers)
          (hsPkgs.list-t)
          (hsPkgs.stm)
          (hsPkgs.stm-containers)
          (hsPkgs.vector)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.file-embed)
          (hsPkgs.extra)
          (hsPkgs.recursion-schemes)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskus-utils)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }