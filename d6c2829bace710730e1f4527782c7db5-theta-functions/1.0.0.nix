{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "theta-functions";
          version = "1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "hijarian@gmail.com";
        author = "Mark Safronov a.k.a. hijarian";
        homepage = "https://github.com/hijarian/theta-functions";
        url = "";
        synopsis = "Theta-functions implemented as trigonometric series";
        description = "Small and simple library for computing values of Theta functions.\nThey're the special functions of two variables. Described very well at Wikipedia article with corresponding name.\nLibrary exports four theta-functions and a small helper to calculate their second parameter.\nTheta functions are functions of Complex variables, FYI.";
        buildType = "Simple";
      };
      components = {
        theta-functions = {
          depends  = [ hsPkgs.base ];
        };
      };
    }