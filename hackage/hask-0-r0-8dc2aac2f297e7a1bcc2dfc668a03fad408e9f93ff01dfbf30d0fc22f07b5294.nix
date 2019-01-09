{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { optimize = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hask"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2014, Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/categories";
      url = "";
      synopsis = "Categories";
      description = "Kind-polymorphic category theory in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.ghc-prim)
          (hsPkgs.reflection)
          (hsPkgs.transformers)
          (hsPkgs.tagged)
          (hsPkgs.void)
          ];
        };
      };
    }