{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { cursed = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "wl-pprint-terminfo";
        version = "0.7.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.containers)
          (hsPkgs.wl-pprint-extras)
          (hsPkgs.terminfo)
          (hsPkgs.transformers)
        ];
        libs = pkgs.lib.optional (flags.cursed) (pkgs."curses");
      };
    };
  }