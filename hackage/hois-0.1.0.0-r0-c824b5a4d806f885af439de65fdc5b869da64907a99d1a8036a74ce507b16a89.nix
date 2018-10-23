{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hois";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Horn <gregmainland@gmail.com>";
      author = "Antti Salonen and Greg Horn";
      homepage = "";
      url = "";
      synopsis = "OIS bindings";
      description = "Bindings to the OIS input system.";
      buildType = "Simple";
    };
    components = {
      "hois" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."OIS") ];
      };
      exes = {
        "OISConsole" = {
          depends  = [
            (hsPkgs.hois)
            (hsPkgs.base)
            (hsPkgs.X11)
          ];
        };
      };
    };
  }