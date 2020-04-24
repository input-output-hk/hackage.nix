{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hakyll-filestore"; version = "0.1.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "arasergus@posteo.net";
      author = "Aras Ergus";
      homepage = "https://gitlab.com/aergus/hakyll-filestore";
      url = "";
      synopsis = "FileStore utilities for Hakyll";
      description = "These utilities can (in particular) be used for extracting\ndate and author information for items from a darcs, git or\nmercurial repository.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."filestore" or ((hsPkgs.pkgs-errors).buildDepError "filestore"))
          (hsPkgs."time-locale-compat" or ((hsPkgs.pkgs-errors).buildDepError "time-locale-compat"))
          (hsPkgs."hakyll" or ((hsPkgs.pkgs-errors).buildDepError "hakyll"))
          ];
        buildable = true;
        };
      };
    }