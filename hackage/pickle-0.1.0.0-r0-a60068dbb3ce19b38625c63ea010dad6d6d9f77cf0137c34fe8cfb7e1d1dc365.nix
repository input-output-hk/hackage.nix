{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "pickle"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright 2019 Anduril Industries";
      maintainer = "bob.blackmon@ymail.com";
      author = "Bob Blackmon";
      homepage = "";
      url = "";
      synopsis = "Instant StatsD in Haskell";
      description = "Instant StatsD in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.network)
          (hsPkgs.text)
          ];
        };
      };
    }