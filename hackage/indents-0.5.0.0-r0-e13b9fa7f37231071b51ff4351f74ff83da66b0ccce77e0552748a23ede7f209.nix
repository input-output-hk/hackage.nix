{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "indents"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Sam Anklesaria, Jasper Van der Jeugt";
      homepage = "http://github.com/jaspervdj/indents";
      url = "";
      synopsis = "indentation sensitive parser-combinators for parsec";
      description = "This library provides functions for use in parsing indentation sensitive contexts. It parses blocks of lines all indented to the same level as well as lines continued at an indented level below.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.parsec) (hsPkgs.mtl) ]; };
      tests = {
        "indents-tests" = {
          depends = [
            (hsPkgs.indents)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }