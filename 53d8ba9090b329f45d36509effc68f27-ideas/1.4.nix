{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-uri = true;
      logging = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "ideas";
          version = "1.4";
        };
        license = "Apache-2.0";
        copyright = "(c) 2015";
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
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.QuickCheck
            hsPkgs.Diff
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.uniplate
            hsPkgs.time
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.parsec
            hsPkgs.wl-pprint
            hsPkgs.array
            hsPkgs.exceptions
            hsPkgs.multipart
            hsPkgs.bytestring
            hsPkgs.old-time
            hsPkgs.old-locale
            hsPkgs.xhtml
          ] ++ pkgs.lib.optionals _flags.logging [
            hsPkgs.HDBC
            hsPkgs.HDBC-sqlite3
          ]) ++ (if _flags.network-uri
            then [
              hsPkgs.network-uri
              hsPkgs.network
            ]
            else [ hsPkgs.network ]);
        };
      };
    }