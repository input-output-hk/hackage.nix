{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.1";
      identifier = { name = "husky"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2008 Markus Dittrich";
      maintainer = "Markus Dittrich <haskelladdict@gmail.com>";
      author = "Markus Dittrich <haskelladdict@gmail.com>";
      homepage = "http://github.com/markusle/husky/tree/master";
      url = "";
      synopsis = "A simple command line calculator.";
      description = "husky is a command line calculator with a small memory\nfootprint. It can be used in a fashion similar to the\ninteractive shells of python, octave, or ruby.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "husky" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.readline)
            (hsPkgs.containers)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }