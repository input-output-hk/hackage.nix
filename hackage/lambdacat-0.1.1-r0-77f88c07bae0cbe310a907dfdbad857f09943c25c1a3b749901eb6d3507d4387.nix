{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "lambdacat"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andreas Baldeau <andreas@baldeau.net>,\nDaniel Ehlers <danielehlers@mindeye.net>";
      author = "Andreas Baldeau, Daniel Ehlers";
      homepage = "http://github.com/baldo/lambdacat";
      url = "";
      synopsis = "Webkit Browser";
      description = "A Browser based on WebKit, concepted to be easy to use and\nextendable.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.gtk)
          (hsPkgs.glade)
          (hsPkgs.webkit)
          (hsPkgs.network)
          (hsPkgs.containers)
          (hsPkgs.dyre)
          (hsPkgs.cmdargs)
          ];
        };
      exes = { "lambdacat" = {}; };
      };
    }