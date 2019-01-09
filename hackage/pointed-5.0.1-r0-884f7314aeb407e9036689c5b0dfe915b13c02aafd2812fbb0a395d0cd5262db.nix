{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      comonad = true;
      containers = true;
      kan-extensions = true;
      semigroupoids = true;
      semigroups = true;
      stm = true;
      tagged = true;
      transformers = true;
      unordered-containers = true;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "pointed"; version = "5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2016 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/pointed/";
      url = "";
      synopsis = "Pointed and copointed data";
      description = "Pointed and copointed data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((((((((([
          (hsPkgs.base)
          (hsPkgs.data-default-class)
          ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.0" && (compiler.version).lt "7.2")) (hsPkgs.generic-deriving)) ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.2" && (compiler.version).lt "7.6")) (hsPkgs.ghc-prim)) ++ (pkgs.lib).optional (flags.comonad) (hsPkgs.comonad)) ++ (pkgs.lib).optional (flags.containers) (hsPkgs.containers)) ++ (pkgs.lib).optional (flags.kan-extensions) (hsPkgs.kan-extensions)) ++ (pkgs.lib).optional (flags.semigroupoids) (hsPkgs.semigroupoids)) ++ (pkgs.lib).optional (flags.semigroups) (hsPkgs.semigroups)) ++ (pkgs.lib).optional (flags.stm) (hsPkgs.stm)) ++ (pkgs.lib).optional (flags.tagged) (hsPkgs.tagged)) ++ (pkgs.lib).optionals (flags.transformers) [
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          ]) ++ (pkgs.lib).optionals (flags.unordered-containers) [
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          ];
        };
      };
    }