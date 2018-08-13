{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "wl-pprint-terminfo";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "git://github.com/ekmett/wl-pprint-terminfo/";
      url = "";
      synopsis = "A color pretty printer with terminfo support";
      description = "A color pretty printer with terminfo support";
      buildType = "Simple";
    };
    components = {
      "wl-pprint-terminfo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.wl-pprint-extras)
          (hsPkgs.hscurses)
          (hsPkgs.terminfo)
          (hsPkgs.transformers)
        ];
      };
    };
  }