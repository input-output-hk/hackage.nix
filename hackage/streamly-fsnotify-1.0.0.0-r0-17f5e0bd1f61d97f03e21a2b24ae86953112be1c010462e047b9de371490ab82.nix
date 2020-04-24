{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "streamly-fsnotify"; version = "1.0.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "(C) Koz Ross 2019";
      maintainer = "koz.ross@retro-freedom.nz";
      author = "Koz Ross";
      homepage = "https://notabug.org/koz.ross/streamly-fsnotify";
      url = "";
      synopsis = "Folder watching as a Streamly stream.";
      description = "Provides Streamly streams for both single-level and\nrecursive folder watching. Also contains a principled and\ncompositional system for filtering file system events.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
          (hsPkgs."fsnotify" or ((hsPkgs.pkgs-errors).buildDepError "fsnotify"))
          (hsPkgs."paths" or ((hsPkgs.pkgs-errors).buildDepError "paths"))
          (hsPkgs."semirings" or ((hsPkgs.pkgs-errors).buildDepError "semirings"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }