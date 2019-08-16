{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "barbly"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Luke Clifton";
      maintainer = "lukec@themk.net";
      author = "Luke Clifton";
      homepage = "";
      url = "";
      synopsis = "Create status bar menus for macOS from executables";
      description = "Allows you to place the stdout of a process in the macOS status bar.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "barbly" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.shh)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.optparse-applicative)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.async)
            (hsPkgs.mtl)
            ];
          frameworks = [ (pkgs."AppKit") ];
          };
        };
      };
    }