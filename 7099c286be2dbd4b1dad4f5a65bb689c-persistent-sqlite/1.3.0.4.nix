{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      systemlib = false;
      build-sanity-exe = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "persistent-sqlite";
        version = "1.3.0.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/persistent";
      url = "";
      synopsis = "Backend for the persistent library using sqlite3.";
      description = "This package includes a thin sqlite3 wrapper based on the direct-sqlite package, as well as the entire C library, so there are no system dependencies.";
      buildType = "Simple";
    };
    components = {
      "persistent-sqlite" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.persistent)
          (hsPkgs.monad-control)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.conduit)
          (hsPkgs.monad-logger)
          (hsPkgs.resourcet)
        ];
        libs = pkgs.lib.optional (_flags.systemlib) (pkgs.sqlite3) ++ pkgs.lib.optional (!system.isWindows) (pkgs.pthread);
      };
      exes = {
        "sanity" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.persistent-sqlite)
          ];
        };
      };
    };
  }