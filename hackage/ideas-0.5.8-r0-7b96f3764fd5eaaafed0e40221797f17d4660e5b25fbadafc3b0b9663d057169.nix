{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.1";
      identifier = { name = "ideas"; version = "0.5.8"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2009";
      maintainer = "bastiaan.heeren@ou.nl";
      author = "Bastiaan Heeren, Alex Gerdes, Johan Jeuring";
      homepage = "http://ideas.cs.uu.nl/";
      url = "";
      synopsis = "Feedback services for intelligent tutoring systems";
      description = "ideas provides feedback services to intelligent tutoring systems such as\nthe digital mathematical environment of the Freudenthal Institute, MathDox,\nand Activemath.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ideas" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.mtl)
            (hsPkgs.cgi)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.uulib)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            ];
          };
        };
      };
    }