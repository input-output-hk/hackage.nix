{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "pointed"; version = "2.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/pointed/";
      url = "";
      synopsis = "Haskell 98 pointed and copointed data";
      description = "Haskell 98 pointed and copointed data";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.comonad)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.stm)
          (hsPkgs.comonad-transformers)
          ];
        };
      };
    }