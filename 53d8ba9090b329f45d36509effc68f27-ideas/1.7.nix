{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      logging = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8.0.2";
      identifier = {
        name = "ideas";
        version = "1.7";
      };
      license = "Apache-2.0";
      copyright = "(c) 2018";
      maintainer = "bastiaan.heeren@ou.nl";
      author = "Bastiaan Heeren, Alex Gerdes, Johan Jeuring";
      homepage = "http://ideas.cs.uu.nl/www/";
      url = "";
      synopsis = "Feedback services for intelligent tutoring systems";
      description = "Ideas (Interactive Domain-specific Exercise Assistants) is a joint research\nproject between the Open University of the Netherlands and Utrecht\nUniversity. The project's goal is to use software and compiler technology to\nbuild state-of-the-art components for intelligent tutoring systems (ITS) and\nlearning environments. The 'ideas' software package provides a generic\nframework for constructing the expert knowledge module (also known as a\ndomain reasoner) for an ITS or learning environment. Domain knowledge is\noffered as a set of feedback services that are used by external tools such\nas the digital mathematical environment (DME), MathDox, and the Math-Bridge\nsystem. We have developed several domain reasoners based on this framework,\nincluding reasoners for mathematics, linear algebra, logic, learning Haskell\n(the Ask-Elle programming tutor) and evaluating Haskell expressions, and for\npracticing communication skills (the serious game Communicate!).";
      buildType = "Simple";
    };
    components = {
      "ideas" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.QuickCheck)
          (hsPkgs.Diff)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.http-types)
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.random)
          (hsPkgs.streaming-commons)
          (hsPkgs.time)
          (hsPkgs.uniplate)
          (hsPkgs.wai)
          (hsPkgs.wl-pprint)
        ] ++ pkgs.lib.optionals (_flags.logging) [
          (hsPkgs.HDBC)
          (hsPkgs.HDBC-sqlite3)
        ]) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
    };
  }