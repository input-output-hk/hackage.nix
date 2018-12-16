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
      specVersion = "1.8";
      identifier = {
        name = "persistent-mysql-haskell";
        version = "0.2.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Naushadh <naushadh@protonmail.com>";
      author = "Naushadh <naushadh@protonmail.com>, Felipe Lessa <felipe.lessa@gmail.com>, Michael Snoyman";
      homepage = "http://www.yesodweb.com/book/persistent";
      url = "";
      synopsis = "A pure haskell backend for the persistent library using MySQL database server.";
      description = "This package contains a backend for persistent using the\nMySQL database server.  Internally it uses the @mysql-haskell@\npackage in order to access the database. See README.md for more.\n\nThis package supports only MySQL 5.1 and above.  However, it\nhas been tested only on MySQL 5.5.\nOnly the InnoDB storage engine is officially supported.\n\nKnown problems:\n\n* This package does not support statements inside other\nstatements.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.persistent)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.monad-control)
          (hsPkgs.aeson)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.monad-logger)
          (hsPkgs.resource-pool)
          (hsPkgs.mysql-haskell)
          (hsPkgs.io-streams)
          (hsPkgs.time)
          (hsPkgs.network)
        ];
      };
      exes = {
        "persistent-mysql-haskell-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.persistent)
            (hsPkgs.monad-logger)
            (hsPkgs.persistent-template)
            (hsPkgs.persistent-mysql-haskell)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }