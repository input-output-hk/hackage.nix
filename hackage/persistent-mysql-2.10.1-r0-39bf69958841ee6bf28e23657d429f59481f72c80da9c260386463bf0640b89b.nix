{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "persistent-mysql"; version = "2.10.1"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.persistent)
          (hsPkgs.aeson)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.monad-logger)
          (hsPkgs.mysql)
          (hsPkgs.mysql-simple)
          (hsPkgs.resourcet)
          (hsPkgs.resource-pool)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unliftio-core)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.persistent)
            (hsPkgs.persistent-mysql)
            (hsPkgs.persistent-qq)
            (hsPkgs.persistent-template)
            (hsPkgs.persistent-test)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.fast-logger)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.monad-logger)
            (hsPkgs.mysql)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unliftio-core)
            ];
          };
        };
      };
    }