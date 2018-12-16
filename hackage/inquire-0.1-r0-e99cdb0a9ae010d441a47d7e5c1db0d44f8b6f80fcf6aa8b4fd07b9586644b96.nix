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
        name = "inquire";
        version = "0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "sp@orbitalfox.com";
      author = "Stavros Polymenis";
      homepage = "";
      url = "";
      synopsis = "Console client for encyclopedias";
      description = "A console (text/terminal) based client for online\nencyclopedias such as Wikipedia.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "inquire" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aether)
            (hsPkgs.text)
          ];
        };
      };
    };
  }