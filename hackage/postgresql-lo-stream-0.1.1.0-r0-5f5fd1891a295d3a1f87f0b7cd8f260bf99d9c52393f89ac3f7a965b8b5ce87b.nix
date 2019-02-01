{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "postgresql-lo-stream"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "https://github.com/obsidiansystems/posgresql-lo-stream";
      url = "";
      synopsis = "Utilities for streaming PostgreSQL LargeObjects";
      description = "Functions for streaming large objects to and from PostgreSQL";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.io-streams)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.postgresql-simple)
          ];
        };
      };
    }