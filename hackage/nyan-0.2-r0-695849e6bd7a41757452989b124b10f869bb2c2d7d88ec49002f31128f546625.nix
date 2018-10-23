{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "nyan";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2011 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Bored? Nyan cat!";
      description = "A little ncurses animation of nyan cat.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "nyan" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ncurses)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }