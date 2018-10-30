{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      derivedatatypeable = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "data-lens-fd";
        version = "1.8.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/data-lens-fd/";
      url = "";
      synopsis = "Lenses";
      description = "Lenses";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.data-lens)
          (hsPkgs.comonad-transformers)
        ];
      };
    };
  }