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
        name = "salvia";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sfvisser@cs.uu.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Lightweight Haskell Web Server Framework";
      description = "Lightweight Haskell Web Server Framework with modular support\nfor serving static files, directories indices, default error\nresponses, connection counting and logging, HEAD and PUT\nrequests, keep-alives, custom banner printing, default\nhandler environments for parsing request and printing\nresponses, dispatching based on request methods, URI, paths\nand filename extension, URI rewriting and redirection,\nvirtual hosting, cookie, session and user management and\nmore...";
      buildType = "Simple";
    };
    components = {
      "salvia" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.filepath)
          (hsPkgs.fclabels)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.encoding)
          (hsPkgs.process)
          (hsPkgs.stm)
          (hsPkgs.pureMD5)
          (hsPkgs.directory)
          (hsPkgs.bimap)
          (hsPkgs.mtl)
          (hsPkgs.random)
        ];
      };
    };
  }