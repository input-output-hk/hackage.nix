{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { systemlib = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "persistent-sqlite";
        version = "1.0.0";
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
        ];
        libs = pkgs.lib.optional (flags.systemlib) (pkgs."sqlite3");
      };
    };
  }