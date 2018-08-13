{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "persistent-mysql";
        version = "2.8.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa <felipe.lessa@gmail.com>, Michael Snoyman";
      homepage = "http://www.yesodweb.com/book/persistent";
      url = "";
      synopsis = "Backend for the persistent library using MySQL database server.";
      description = "This package contains a backend for persistent using the\nMySQL database server.  Internally it uses the @mysql-simple@\nand @mysql@ packages in order to access the database.\n\nThis package supports only MySQL 5.1 and above.  However, it\nhas been tested only on MySQL 5.5.\nOnly the InnoDB storage engine is officially supported.\n\nKnown problems:\n\n* This package does not support statements inside other\nstatements.";
      buildType = "Simple";
    };
    components = {
      "persistent-mysql" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mysql-simple)
          (hsPkgs.mysql)
          (hsPkgs.blaze-builder)
          (hsPkgs.persistent)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.unliftio-core)
          (hsPkgs.aeson)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.monad-logger)
          (hsPkgs.resource-pool)
        ];
      };
    };
  }