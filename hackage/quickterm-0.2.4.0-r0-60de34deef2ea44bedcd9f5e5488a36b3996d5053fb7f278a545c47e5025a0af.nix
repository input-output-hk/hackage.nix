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
        name = "quickterm";
        version = "0.2.4.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "sgschlesinger@gmail.com,aka.bash0r@gmail.com";
      author = "Samuel Schlesinger, Nils 'bash0r' Jonsson";
      homepage = "https://github.com/SamuelSchlesinger/Quickterm";
      url = "";
      synopsis = "An interface for describing and executing terminal applications";
      description = "A quick and modular way to construct terminal interfaces.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.edit-distance)
          (hsPkgs.hashmap)
          (hsPkgs.base)
          (hsPkgs.edit-distance)
          (hsPkgs.regex-base)
          (hsPkgs.regex-tdfa)
          (hsPkgs.uu-parsinglib)
          (hsPkgs.base)
        ];
      };
      exes = {
        "qt-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.quickterm)
          ];
        };
      };
    };
  }