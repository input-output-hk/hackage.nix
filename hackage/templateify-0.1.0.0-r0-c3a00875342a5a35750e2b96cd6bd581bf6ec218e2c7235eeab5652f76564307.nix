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
      specVersion = "1.8";
      identifier = {
        name = "templateify";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "w@xy30.com";
      author = "Alan Hawkins";
      homepage = "http://github.com/xpika/templateify";
      url = "";
      synopsis = "Make template from website";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "templateify" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tagsoup)
            (hsPkgs.uniplate)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }