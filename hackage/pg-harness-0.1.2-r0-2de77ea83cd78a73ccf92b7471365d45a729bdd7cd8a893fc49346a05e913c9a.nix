{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pg-harness"; version = "0.1.2"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright (c) 2014, 2015 Bardur Arantsson";
      maintainer = "bardur@scientician.net";
      author = "Bardur Arantsson";
      homepage = "https://github.com/BardurArantsson/pg-harness";
      url = "";
      synopsis = "REST service for creating temporary PostgreSQL databases";
      description = "REST service for conveniently creating temporary PostgreSQL databases.\nIt is intended for use from tests.\n\nSee <https://github.com/BardurArantsson/pg-harness/blob/master/README.md README.md> on\nGitHub for detailed usage instructions.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pg-harness" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.ini)
            (hsPkgs.postgresql-simple)
            (hsPkgs.random)
            (hsPkgs.scotty)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }