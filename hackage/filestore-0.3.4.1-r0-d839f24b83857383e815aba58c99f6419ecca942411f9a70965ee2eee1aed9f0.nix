{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { maxcount = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "filestore"; version = "0.3.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane, Gwern Branwen, Sebastiaan Visser";
      homepage = "http://johnmacfarlane.net/repos/filestore";
      url = "";
      synopsis = "Interface for versioning file stores.";
      description = "The filestore library provides an abstract interface for a versioning\nfile store, and modules that instantiate this interface.  Currently\nGit, Darcs, and Mercurial modules are provided, and other VCSs\nor databases could be added.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."datetime" or ((hsPkgs.pkgs-errors).buildDepError "datetime"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."datetime" or ((hsPkgs.pkgs-errors).buildDepError "datetime"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."Diff" or ((hsPkgs.pkgs-errors).buildDepError "Diff"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          ];
        buildable = true;
        };
      };
    }