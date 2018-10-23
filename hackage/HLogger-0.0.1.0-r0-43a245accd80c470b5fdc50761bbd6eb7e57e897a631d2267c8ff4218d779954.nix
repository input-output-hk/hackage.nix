{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "HLogger";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2011, Jon Kristensen";
      maintainer = "jon.kristensen@pontarius.org";
      author = "Jon Kristensen, Mahdi Abdinejadi";
      homepage = "http://www.pontarius.org/sub-projects/hlogger/";
      url = "http://www.pontarius.org/releases/hlogger-0.0.1.0.tar.gz";
      synopsis = "Simple, concurrent and easy-to-use logging library";
      description = "This is a work in progress for a logging framework that\naims to be simple, concurrent and easy-to-use. We are\nthinking about using monads and allow for multiple logging\nimplementations.";
      buildType = "Simple";
    };
    components = {
      "HLogger" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-locale)
          (hsPkgs.time)
        ];
      };
      exes = {
        "logger-0.0.1.0-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.old-locale)
            (hsPkgs.time)
          ];
        };
      };
    };
  }