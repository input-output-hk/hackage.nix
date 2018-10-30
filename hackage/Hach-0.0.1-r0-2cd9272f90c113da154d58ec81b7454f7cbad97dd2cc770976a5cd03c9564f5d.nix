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
        name = "Hach";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Dmitry Malikov <malikov.d.y@gmail.com>";
      author = "Matvey Aksenov,\nDmitry Malikov";
      homepage = "http://github.com/dmalikov/HaCh";
      url = "";
      synopsis = "Simple chat";
      description = "Simple chat";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.old-locale)
          (hsPkgs.network)
          (hsPkgs.time)
        ];
      };
      exes = {
        "hach-client" = {};
        "hach-nclient" = {
          depends  = [
            (hsPkgs.vty)
            (hsPkgs.vty-ui)
          ];
        };
        "hach-server" = {};
      };
    };
  }