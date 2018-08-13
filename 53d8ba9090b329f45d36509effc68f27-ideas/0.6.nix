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
      specVersion = "1.8.0.2";
      identifier = {
        name = "ideas";
        version = "0.6";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2010";
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.mtl)
            (hsPkgs.cgi)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.uulib)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.old-time)
          ];
        };
      };
    };
  }