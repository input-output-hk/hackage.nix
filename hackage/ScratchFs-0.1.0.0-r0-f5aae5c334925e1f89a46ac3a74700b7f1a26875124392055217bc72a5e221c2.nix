{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "ScratchFs"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Falco Hirschenberger <hirsch@bigfoot.de>";
      maintainer = "Falco Hirschenberger <hirsch@bigfoot.de>";
      author = "Falco Hirschenberger <hirsch@bigfoot.de>";
      homepage = "";
      url = "";
      synopsis = "Size limited temp filesystem based on fuse";
      description = "ScratchFS is a FUSE-based filesystem which provides a size-limited directory tree.\nWhen the filesystem is mounted, the user provides a maximum size the target directory and all it's\nsubdirectories may get. All IO operations in the mountdirectory are tracked and the oldest files in the watchdirectory get deleted automatically.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ScratchFs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HFuse" or ((hsPkgs.pkgs-errors).buildDepError "HFuse"))
            (hsPkgs."hsyslog" or ((hsPkgs.pkgs-errors).buildDepError "hsyslog"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."sqlite-simple" or ((hsPkgs.pkgs-errors).buildDepError "sqlite-simple"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }