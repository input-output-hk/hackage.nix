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
      specVersion = "1.10";
      identifier = {
        name = "shift";
        version = "0.2.1.0";
      };
      license = "MIT";
      copyright = "2010 Siddharth Bhat, 2017-2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Siddharth Bhat, Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "A tool to quickly switch between directories";
      description = "This is a command-line tool to \"teleport\" between directories";
      buildType = "Simple";
    };
    components = {
      exes = {
        "teleport-hask" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.turtle)
            (hsPkgs.optparse-applicative)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
            (hsPkgs.binary)
            (hsPkgs.composition-prelude)
            (hsPkgs.microlens)
            (hsPkgs.bytestring)
            (hsPkgs.ansi-terminal)
            (hsPkgs.system-fileio)
            (hsPkgs.data-default)
          ];
        };
      };
    };
  }