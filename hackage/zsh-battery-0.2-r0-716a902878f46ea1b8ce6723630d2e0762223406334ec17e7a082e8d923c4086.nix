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
        name = "zsh-battery";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mats.rauhala@gmail.com";
      author = "Mats Rauhala";
      homepage = "https://github.com/MasseR/zsh-battery";
      url = "";
      synopsis = "Ascii bars representing battery status";
      description = "Ascii bars representing battery status for zsh.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "zsh-battery" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }