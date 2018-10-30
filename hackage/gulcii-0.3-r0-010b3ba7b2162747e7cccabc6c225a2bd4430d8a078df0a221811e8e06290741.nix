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
      specVersion = "1.6";
      identifier = {
        name = "gulcii";
        version = "0.3";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://code.mathr.co.uk/gulcii";
      url = "";
      synopsis = "graphical untyped lambda calculus interactive interpreter";
      description = "GULCII is an untyped lambda calculus interpreter supporting interactive\nmodification of a running program with graphical display of graph reduction.\n\nSee README.md for the user manual.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gulcii" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.gtk)
            (hsPkgs.cairo)
          ];
        };
      };
    };
  }