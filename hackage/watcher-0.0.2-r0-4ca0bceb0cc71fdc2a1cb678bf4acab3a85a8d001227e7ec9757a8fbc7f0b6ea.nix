{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "watcher"; version = "0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "nate@so8r.es";
      author = "Nate Soares";
      homepage = "";
      url = "";
      synopsis = "Opinionated filesystem watcher.";
      description = "A thin opinionated wrapper around INotify. Fires\nAdded/Changed/Moved/Removed events on files, and that's it.\nWatches (only files) recursively on a given directory.\nDesigned for simple filesystem watchers that don't want to mess\nwith INotify. Inherits all of INotify's limitations surrounding\nmoved files: Events are not fired for overwritten files nor for\nfiles moved out of the watched directory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hinotify" or ((hsPkgs.pkgs-errors).buildDepError "hinotify"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hinotify" or ((hsPkgs.pkgs-errors).buildDepError "hinotify"))
            ];
          buildable = true;
          };
        };
      };
    }