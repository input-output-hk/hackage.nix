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
        name = "PUH-Project";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "t.bulota@gmail.com";
      author = "AT&T";
      homepage = "";
      url = "";
      synopsis = "This is a package which includes Assignments, Email, User and Reviews modules for Programming in Haskell course.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "PUH-Project" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.persistent)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.persistent-template)
          (hsPkgs.pwstore-fast)
          (hsPkgs.bytestring)
          (hsPkgs.random)
          (hsPkgs.directory)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.smtp-mail)
          (hsPkgs.mime-mail)
          (hsPkgs.network)
          (hsPkgs.time)
          (hsPkgs.old-locale)
        ];
      };
    };
  }