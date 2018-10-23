{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haroonga-httpd";
        version = "0.1.0.0";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "cosmo0920.wp@gmail.com";
      author = "cosmo0920";
      homepage = "";
      url = "";
      synopsis = "Yet another Groonga http server.";
      description = "Yet another Groonga http server written in Haskell.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "haroonga-httpd" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.scotty)
            (hsPkgs.http-types)
            (hsPkgs.wai-extra)
            (hsPkgs.optparse-applicative)
            (hsPkgs.haroonga)
          ];
        };
      };
    };
  }