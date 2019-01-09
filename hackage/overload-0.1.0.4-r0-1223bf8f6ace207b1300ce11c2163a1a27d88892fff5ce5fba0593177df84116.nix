{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "overload"; version = "0.1.0.4"; };
      license = "MIT";
      copyright = "2017 Luka";
      maintainer = "luka.horvat9@gmail.com";
      author = "Luka Horvat";
      homepage = "https://gitlab.com/LukaHorvat/overload";
      url = "";
      synopsis = "Finite overloading";
      description = "Provides a mechanism for finite overloading";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.simple-effects)
          (hsPkgs.th-expand-syns)
          ];
        };
      };
    }