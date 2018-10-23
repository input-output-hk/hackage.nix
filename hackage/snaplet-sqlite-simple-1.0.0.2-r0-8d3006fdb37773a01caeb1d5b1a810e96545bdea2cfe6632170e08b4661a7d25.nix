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
        name = "snaplet-sqlite-simple";
        version = "1.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Janne Hellsten <jjhellst@gmail.com>\n,     Sergey Bushnyak <sergey.bushnyak@sigrlami.eu>";
      author = "Janne Hellsten, Doug Beardsley";
      homepage = "https://github.com/nurpax/snaplet-sqlite-simple";
      url = "";
      synopsis = "sqlite-simple snaplet for the Snap Framework";
      description = "This snaplet provides support for using the SQLite\ndatabase with a Snap Framework application via the\nsqlite-simple package.  It also includes an\nauthentication backend.\n\nSee\n<https://github.com/nurpax/snaplet-sqlite-simple/tree/master/example>\nfor an example project that demonstrates the use of\nthis snaplet.  It implements a stand-alone application\nwith a login screen that persists user information in\na SQLite database and allows a logged in user to save\ncomments.  Querying and listing comments demonstrates\nhow a user of snaplet-sqlite-simple might relate\nSnaplet.Auth based AuthUsers to his own tables.";
      buildType = "Simple";
    };
    components = {
      "snaplet-sqlite-simple" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.clientsession)
          (hsPkgs.configurator)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.sqlite-simple)
          (hsPkgs.direct-sqlite)
          (hsPkgs.snap)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.HUnit)
            (hsPkgs.exceptions)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.clientsession)
            (hsPkgs.configurator)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.errors)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.SafeSemaphore)
            (hsPkgs.snap-core)
            (hsPkgs.snap)
            (hsPkgs.snaplet-sqlite-simple)
            (hsPkgs.sqlite-simple)
            (hsPkgs.stm)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }