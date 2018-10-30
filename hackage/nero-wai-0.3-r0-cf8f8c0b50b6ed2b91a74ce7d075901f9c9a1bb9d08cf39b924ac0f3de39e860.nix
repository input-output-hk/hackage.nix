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
        name = "nero-wai";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 J. Daniel Navarro";
      maintainer = "j@dannynavarro.net";
      author = "Danny Navarro";
      homepage = "https://github.com/plutonbrb/nero-wai";
      url = "";
      synopsis = "WAI adapter for Nero server applications";
      description = "Check the <https://github.com/plutonbrb/nero-wai#nero-wai README> for a more\ndetailed explanation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.nero)
          (hsPkgs.lens)
          (hsPkgs.http-types)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
        ];
      };
    };
  }