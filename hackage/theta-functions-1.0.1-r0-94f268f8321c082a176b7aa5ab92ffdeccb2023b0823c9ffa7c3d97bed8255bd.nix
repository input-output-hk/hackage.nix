{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "theta-functions"; version = "1.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "hijarian@gmail.com";
      author = "Mark Safronov a.k.a. hijarian";
      homepage = "https://github.com/hijarian/theta-functions";
      url = "";
      synopsis = "Theta-functions implemented as trigonometric series";
      description = "Small and simple library for computing values of Theta functions.\nThey're the special functions of two variables. Described very well at <https://en.wikipedia.org/wiki/Theta_function>.\nLibrary exports four theta-functions and a small helper to calculate their second parameter.\nTheta functions are functions of Complex variables, FYI.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }