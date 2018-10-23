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
        name = "timelens";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/timelens";
      url = "";
      synopsis = "Lenses for the time package";
      description = "These are lenses for the time package.  Please see the README.md\nfor more information.";
      buildType = "Simple";
    };
    components = {
      "timelens" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.time)
        ];
      };
    };
  }