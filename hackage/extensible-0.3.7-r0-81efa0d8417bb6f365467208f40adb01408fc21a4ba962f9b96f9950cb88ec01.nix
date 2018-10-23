{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "extensible";
        version = "0.3.7";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016 Fumiaki Kinoshita";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/extensible";
      url = "";
      synopsis = "Extensible, efficient, optics-friendly data types";
      description = "Poly-kinded extensible records and variants";
      buildType = "Simple";
    };
    components = {
      "extensible" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.constraints)
          (hsPkgs.profunctors)
          (hsPkgs.tagged)
          (hsPkgs.transformers)
          (hsPkgs.monad-skeleton)
        ];
      };
    };
  }