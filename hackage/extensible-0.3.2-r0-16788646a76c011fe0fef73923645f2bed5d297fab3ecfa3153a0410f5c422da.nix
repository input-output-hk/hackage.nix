{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "extensible";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Fumiaki Kinoshita";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/extensible";
      url = "";
      synopsis = "Extensible, efficient, lens-friendly data types";
      description = "Combinators and types for extensible product and sum";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.binary)
          (hsPkgs.constraints)
        ];
      };
    };
  }