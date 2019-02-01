{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { demos = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "fortytwo"; version = "1.0.5"; };
      license = "MIT";
      copyright = "Gianlua Guarini";
      maintainer = "gianluca.guarini@gmail.com";
      author = "Gianluca Guarini";
      homepage = "https://github.com/gianlucaguarini/fortytwo#readme";
      url = "";
      synopsis = "Interactive terminal prompt";
      description = "List of Prompt helpers to pimp the UIs of your haskell programs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.ansi-terminal) ];
        };
      exes = { "demo" = { depends = [ (hsPkgs.base) (hsPkgs.fortytwo) ]; }; };
      tests = {
        "spec" = {
          depends = [ (hsPkgs.fortytwo) (hsPkgs.base) (hsPkgs.hspec) ];
          };
        "doctest" = {
          depends = [ (hsPkgs.fortytwo) (hsPkgs.base) (hsPkgs.doctest) ];
          };
        };
      };
    }