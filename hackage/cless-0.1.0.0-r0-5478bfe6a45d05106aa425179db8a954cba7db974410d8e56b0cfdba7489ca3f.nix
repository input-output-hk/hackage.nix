{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cless"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2015 Hideyuki Tanaka";
      maintainer = "tanaka.hideyuki@gmail.com";
      author = "Hideyuki Tanaka";
      homepage = "https://github.com/tanakh/cless";
      url = "";
      synopsis = "Colorized LESS";
      description = "Print file contents with syntax highlighting";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cless" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.highlighting-kate)
            (hsPkgs.wl-pprint-terminfo)
            (hsPkgs.wl-pprint-extras)
            (hsPkgs.terminfo)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      };
    }