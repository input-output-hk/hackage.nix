{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "shift"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2010 Siddharth Bhat, 2017 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Siddharth Bhat, Vanessa McHale";
      homepage = "https://github.com/vmchale/teleport#readme";
      url = "";
      synopsis = "A tool to quickly switch between directories";
      description = "Please see README.md for details";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.turtle)
          (hsPkgs.optparse-applicative)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.composition)
          (hsPkgs.lens)
          (hsPkgs.bytestring)
          (hsPkgs.ansi-terminal)
          (hsPkgs.system-fileio)
          (hsPkgs.data-default)
          ];
        };
      exes = {
        "teleport-hask" = { depends = [ (hsPkgs.base) (hsPkgs.shift) ]; };
        };
      };
    }