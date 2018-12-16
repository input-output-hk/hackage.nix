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
      specVersion = "1.6";
      identifier = {
        name = "hlogger";
        version = "0.0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2011, Jon Kristensen";
      maintainer = "jon.kristensen@pontarius.org";
      author = "Jon Kristensen, Mahdi Abdinejadi";
      homepage = "http://www.pontarius.org/sub-projects/hlogger/";
      url = "http://www.pontarius.org/releases/hlogger-0.0.2.0.tar.gz";
      synopsis = "Simple, concurrent, extendable and easy-to-use logging\nlibrary";
      description = "This is a work in progress for a logging framework that\naims to be simple, concurrent, extendable and easy-to-use.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.old-locale)
          (hsPkgs.time)
        ];
      };
    };
  }