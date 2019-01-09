{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fortytwo"; version = "0.0.1"; };
      license = "MIT";
      copyright = "Gianlua Guarini";
      maintainer = "gianluca.guarini@gmail.com";
      author = "Gianluca Guarini";
      homepage = "https://github.com/gianlucaguarini/fortytwo#readme";
      url = "";
      synopsis = "Interactive terminal prompt";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.terminfo)
          (hsPkgs.ansi-terminal)
          ];
        };
      exes = {
        "examples" = { depends = [ (hsPkgs.base) (hsPkgs.fortytwo) ]; };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.fortytwo)
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.async)
            (hsPkgs.hspec)
            ];
          };
        "doctest" = {
          depends = [ (hsPkgs.fortytwo) (hsPkgs.base) (hsPkgs.doctest) ];
          };
        };
      };
    }