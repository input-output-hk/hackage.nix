{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "watcher"; version = "0.0.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "nate@so8r.es";
      author = "So8res";
      homepage = "";
      url = "";
      synopsis = "Opinionated filesystem watcher";
      description = "A filesystem watcher. Triggers added/changed/removed events\nwhen the filesystem changes. Can cache in an SQL database\nand bring itself back up to date after long periods of\ndowntime.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."basic-prelude" or ((hsPkgs.pkgs-errors).buildDepError "basic-prelude"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."system-fileio" or ((hsPkgs.pkgs-errors).buildDepError "system-fileio"))
          (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
          (hsPkgs."hinotify" or ((hsPkgs.pkgs-errors).buildDepError "hinotify"))
          ];
        buildable = true;
        };
      };
    }