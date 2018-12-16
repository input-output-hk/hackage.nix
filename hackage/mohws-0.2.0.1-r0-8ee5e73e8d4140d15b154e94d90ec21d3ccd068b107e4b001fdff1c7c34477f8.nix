{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { dynamic = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "mohws";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Simon Marlow, Bjorn Bringert";
      maintainer = "Henning Thielemann <webserver@henning-thielemann.de>";
      author = "Simon Marlow, Bjorn Bringert <bjorn@bringert.net>";
      homepage = "http://code.haskell.org/mohws/";
      url = "";
      synopsis = "Modular Haskell Web Server";
      description = "A web server with a module system and support for CGI.\nBased on Simon Marlow's original Haskell Web Server.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.HTTP)
          (hsPkgs.network)
          (hsPkgs.unix)
          (hsPkgs.parsec)
          (hsPkgs.html)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.utility-ht)
          (hsPkgs.transformers)
          (hsPkgs.explicit-exception)
          (hsPkgs.data-accessor)
        ];
      };
      exes = {
        "hws" = {};
        "hws-dyn" = {
          depends = pkgs.lib.optional (flags.dynamic) (hsPkgs.ghc);
        };
      };
    };
  }