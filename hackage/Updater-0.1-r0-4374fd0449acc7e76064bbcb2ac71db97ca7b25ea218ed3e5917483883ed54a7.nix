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
        name = "Updater";
        version = "0.1";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "silvio.frischi@gmail.com";
      author = "Silvio Frischknecht";
      homepage = "https://github.com/yokto/Updater";
      url = "";
      synopsis = "Monadic FRP library based on stm";
      description = "Read the homepage for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
        ];
      };
    };
  }