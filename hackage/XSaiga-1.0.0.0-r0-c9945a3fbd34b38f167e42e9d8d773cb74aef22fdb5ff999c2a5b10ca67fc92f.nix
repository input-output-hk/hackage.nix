{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "XSaiga";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "peelar@uwindsor.ca";
      author = "Dr. Rahmatullah Hafiz, Dr. Richard Frost, Shane Peelar, and Eric Matthews";
      homepage = "http://hafiz.myweb.cs.uwindsor.ca/proHome.html";
      url = "";
      synopsis = "An implementation of a polynomial-time top-down parser suitable for NLP";
      description = "This package contains an implementation of the X-SAIGA project's top-down polynomial-time parser which is suitable for natural language processing (NLP)\napplications[1][2].  An example program \"Solarman\" is included which uses the parser to transform natural language queries about the solar system\ninto combinators which compute the correct answer.  Solarman uses event-based triplestore semantics[3] as the basis for the computation, using either\na SPARQL endpoint or an in-program triplestore as the source of information.  By default, the built-in triplestore is used.  Solarman conforms\nto the CGI interface and can be put on any conforming webserver.  For more information about Solarman and the queries it supports, see [4].\n\n\\[1] <http://cs.uwindsor.ca/~richard/PUBLICATIONS/PADL_10.pdf>\n\n\\[2] <http://cs.uwindsor.ca/~richard/PUBLICATIONS/PADL_08.pdf>\n\n\\[3] <http://cs.uwindsor.ca/~richard/PUBLICATIONS/ESWC_DEMO.pdf>\n\n\\[4] <http://speechweb2.cs.uwindsor.ca/solarman/demo_instore.html>";
      buildType = "Simple";
    };
    components = {
      "XSaiga" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pretty)
        ];
      };
      exes = {
        "Solarman" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.pretty)
            (hsPkgs.cgi)
            (hsPkgs.rdf4h)
            (hsPkgs.hsparql)
            (hsPkgs.text)
          ];
        };
      };
    };
  }