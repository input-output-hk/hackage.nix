{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      derivedatatypeable = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "data-lens-fd";
        version = "1.8.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "git://github.com/ekmett/data-lens-fd/";
      url = "";
      synopsis = "Lenses";
      description = "Lenses";
      buildType = "Simple";
    };
    components = {
      "data-lens-fd" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.comonad)
          (hsPkgs.data-lens)
          (hsPkgs.comonad-transformers)
        ];
      };
    };
  }