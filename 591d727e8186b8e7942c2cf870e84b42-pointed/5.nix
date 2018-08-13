{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      comonad = true;
      containers = true;
      kan-extensions = true;
      semigroupoids = true;
      semigroups = true;
      stm = true;
      tagged = true;
      transformers = true;
      unordered-containers = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "pointed";
        version = "5";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2016 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/pointed/";
      url = "";
      synopsis = "Pointed and copointed data";
      description = "Pointed and copointed data";
      buildType = "Simple";
    };
    components = {
      "pointed" = {
        depends  = (((((((([
          (hsPkgs.base)
          (hsPkgs.data-default-class)
        ] ++ pkgs.lib.optional (_flags.comonad) (hsPkgs.comonad)) ++ pkgs.lib.optional (_flags.containers) (hsPkgs.containers)) ++ pkgs.lib.optional (_flags.kan-extensions) (hsPkgs.kan-extensions)) ++ pkgs.lib.optional (_flags.semigroupoids) (hsPkgs.semigroupoids)) ++ pkgs.lib.optional (_flags.semigroups) (hsPkgs.semigroups)) ++ pkgs.lib.optional (_flags.stm) (hsPkgs.stm)) ++ pkgs.lib.optional (_flags.tagged) (hsPkgs.tagged)) ++ pkgs.lib.optionals (_flags.transformers) [
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
        ]) ++ pkgs.lib.optionals (_flags.unordered-containers) [
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }