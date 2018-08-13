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
        version = "1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2011";
      maintainer = "bastiaan.heeren@ou.nl";
      author = "Bastiaan Heeren, Alex Gerdes, Johan Jeuring";
      homepage = "http://ideas.cs.uu.nl/www/";
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
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.uniplate)
          ];
        };
      };
    };
  }