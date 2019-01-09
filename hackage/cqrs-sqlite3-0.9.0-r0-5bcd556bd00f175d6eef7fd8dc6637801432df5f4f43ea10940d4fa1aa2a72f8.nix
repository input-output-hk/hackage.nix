{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cqrs-sqlite3"; version = "0.9.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "SQLite3 backend for the cqrs package.";
      description = "SQLite3 backend for the cqrs package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.cqrs-types)
          (hsPkgs.pool-conduit)
          (hsPkgs.direct-sqlite)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "cqrs-sqlite3-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.cqrs-test)
            (hsPkgs.pool-conduit)
            (hsPkgs.direct-sqlite)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.cqrs-sqlite3)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }