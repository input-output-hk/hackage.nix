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
        name = "snaplet-mysql-simple";
        version = "0.2.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@ibotty.net";
      author = "Tobias Florek";
      homepage = "https://github.com/ibotty/snaplet-mysql-simple";
      url = "";
      synopsis = "mysql-simple snaplet for the Snap Framework";
      description = "This snaplet contains support for using the MariaDB and MySQL\ndatabase with a Snap Framework application via the mysql-simple\npackage. It also includes an untested authentication backend.\nHeavily based on snaplet-postgresql-simple by Doug Beardsley.";
      buildType = "Simple";
    };
    components = {
      "snaplet-mysql-simple" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.clientsession)
          (hsPkgs.containers)
          (hsPkgs.configurator)
          (hsPkgs.errors)
          (hsPkgs.lens)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.mtl)
          (hsPkgs.mysql-simple)
          (hsPkgs.mysql)
          (hsPkgs.resource-pool-catchio)
          (hsPkgs.snap)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }