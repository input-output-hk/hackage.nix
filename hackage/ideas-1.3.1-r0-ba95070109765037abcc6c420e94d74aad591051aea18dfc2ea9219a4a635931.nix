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
      specVersion = "1.8.0.2";
      identifier = {
        name = "ideas";
        version = "1.3.1";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2015";
      maintainer = "bastiaan.heeren@ou.nl";
      author = "Bastiaan Heeren, Alex Gerdes, Johan Jeuring";
      homepage = "http://ideas.cs.uu.nl/www/";
      url = "";
      synopsis = "Feedback services for intelligent tutoring systems";
      description = "ideas provides feedback services to intelligent tutoring systems such as\nthe digital mathematical environment of the Freudenthal Institute, MathDox,\nand Activemath.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.Diff)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.uniplate)
          (hsPkgs.time)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.parsec)
          (hsPkgs.wl-pprint)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.exceptions)
          (hsPkgs.multipart)
          (hsPkgs.bytestring)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          (hsPkgs.xhtml)
        ];
      };
    };
  }