{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      wasapi = false;
      directsound = false;
      wmme = false;
      wdmks = false;
      mingw-external = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bindings-portaudio";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings to portaudio library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "bindings-portaudio" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
        libs = pkgs.lib.optionals (system.isWindows && !flags.mingw-external) ([
          (pkgs."winmm")
          (pkgs."ole32")
        ] ++ pkgs.lib.optional (flags.wdmks) (pkgs."Setupapi"));
        pkgconfig = pkgs.lib.optional (system.isLinux || system.isFreebsd || system.isOsx) (pkgconfPkgs.portaudio-2.0);
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }