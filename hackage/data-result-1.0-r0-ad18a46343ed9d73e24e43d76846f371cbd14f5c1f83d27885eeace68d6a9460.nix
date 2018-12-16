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
        name = "data-result";
        version = "1.0";
      };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2016 Wojciech Danilo";
      maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
      author = "Wojciech Danilo";
      homepage = "https://github.com/wdanilo/data-result";
      url = "";
      synopsis = "Data types for returning results distinguishable by types.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.poly-control)
          (hsPkgs.prologue)
        ];
      };
    };
  }