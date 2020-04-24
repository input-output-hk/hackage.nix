{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "redis-job-queue"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Tero Laitinen";
      author = "Tero Laitinen";
      homepage = "";
      url = "";
      synopsis = "Simple priority job queue backed by Redis.";
      description = "Priority queue for background jobs implemented using Redis' sorted sets.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hedis" or ((hsPkgs.pkgs-errors).buildDepError "hedis"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          ];
        buildable = true;
        };
      };
    }