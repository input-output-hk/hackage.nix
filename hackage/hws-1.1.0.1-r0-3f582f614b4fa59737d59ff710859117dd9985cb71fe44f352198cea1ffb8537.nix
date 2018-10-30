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
        name = "hws";
        version = "1.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "newsham@lava.net";
      author = "Simon Marlow";
      homepage = "";
      url = "";
      synopsis = "Simple Haskell Web Server";
      description = "The original Haskell Web Server, as described in the\npaper \"Developing a high-performance web server in\nConcurrent Haskell\" (JFP 12(4+5):359--374, July 2002).\nI'm making the package available for archaeological and\nillustrative reasons; while this certainly can be used to\nserve simple static content, there are other much more\nfully-featured web servers and frameworks on Hackage.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hws" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.network)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.unix)
            (hsPkgs.html)
            (hsPkgs.array)
            (hsPkgs.old-time)
            (hsPkgs.directory)
            (hsPkgs.regex-compat)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }