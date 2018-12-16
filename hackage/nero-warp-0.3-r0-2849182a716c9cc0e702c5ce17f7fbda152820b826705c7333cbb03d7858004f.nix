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
        name = "nero-warp";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 J. Daniel Navarro";
      maintainer = "j@dannynavarro.net";
      author = "Danny Navarro";
      homepage = "https://github.com/plutonbrb/nero-warp";
      url = "";
      synopsis = "Run Nero server applications with Warp";
      description = "Check the <https://github.com/plutonbrb/nero-warp#nero-warp README> for a\nmore detailed explanation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.nero)
          (hsPkgs.nero-wai)
          (hsPkgs.warp)
        ];
      };
    };
  }