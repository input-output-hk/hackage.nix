{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "theta-functions";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "hijarian@gmail.com";
      author = "Mark Safronov a.k.a. hijarian";
      homepage = "";
      url = "";
      synopsis = "Theta-functions implemented as trigonometric series";
      description = "Small and simple library for computing values of Theta functions.\nThey're the special functions of two variables. Described very well at \"http://en.wikipedia.org/wiki/Theta_function\".\nLibrary exports four theta-functions and a small helper to calculate their second parameter.\nTheta functions are functions of Complex variables, FYI.";
      buildType = "Simple";
    };
    components = {
      "theta-functions" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }