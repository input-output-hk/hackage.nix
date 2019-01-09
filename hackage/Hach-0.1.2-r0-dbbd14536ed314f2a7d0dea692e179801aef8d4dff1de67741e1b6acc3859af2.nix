{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Hach"; version = "0.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Dmitry Malikov <malikov.d.y@gmail.com>";
      author = "Matvey Aksenov,\nDmitry Malikov";
      homepage = "http://github.com/dmalikov/HaCh";
      url = "";
      synopsis = "Simple chat";
      description = "Simple example of chat application. Consists of 3 components: hach-server, hach-client (simple console client), hach-nclient (vty-ui client).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.old-locale)
          (hsPkgs.network)
          ];
        };
      exes = {
        "hach-client" = {};
        "hach-nclient" = {
          depends = [ (hsPkgs.vty) (hsPkgs.vty-ui) (hsPkgs.text) ];
          };
        "hach-server" = { depends = [ (hsPkgs.time) ]; };
        };
      };
    }