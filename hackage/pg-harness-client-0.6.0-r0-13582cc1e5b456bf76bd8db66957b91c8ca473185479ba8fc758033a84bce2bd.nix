{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pg-harness-client"; version = "0.6.0"; };
      license = "BSD-2-Clause";
      copyright = "Copyright (c) 2014, 2015 Bardur Arantsson";
      maintainer = "bardur@scientician.net";
      author = "Bardur Arantsson";
      homepage = "https://github.com/BardurArantsson/pg-harness";
      url = "";
      synopsis = "Client library for pg-harness-server";
      description = "Client library for <https://hackage.haskell.org/package/pg-harness-server pg-harness-server>\nfor conveniently creating temporary PostgreSQL databases for use in tests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.HTTP) ];
        };
      };
    }