{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      officialcsfmlforwindows = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "SFML";
        version = "2.3.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jeannekamikaze@gmail.com";
      author = "Marc Sunet";
      homepage = "https://github.com/jeannekamikaze/SFML";
      url = "";
      synopsis = "SFML bindings";
      description = "Low level bindings for SFML 2.3.2.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
        libs = if system.isWindows
          then [
            (pkgs."csfml-window")
            (pkgs."csfml-system")
            (pkgs."csfml-graphics")
            (pkgs."csfml-network")
            (pkgs."csfml-audio")
          ]
          else [
            (pkgs."csfml-window")
            (pkgs."csfml-system")
            (pkgs."csfml-graphics")
            (pkgs."csfml-network")
            (pkgs."csfml-audio")
            (pkgs."sfml-window")
            (pkgs."sfml-system")
            (pkgs."sfml-graphics")
            (pkgs."sfml-network")
            (pkgs."sfml-audio")
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }