{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "devil"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2013 Yanhao Zhu.";
      maintainer = "Yanhao Zhu <yanhaozhu@gmail.com>";
      author = "Yanhao Zhu";
      homepage = "https://github.com/luanzhu/devil";
      url = "";
      synopsis = "A small tool to make it easier to update program managed by Angel.";
      description = "@Devil@ is a small tool to make it easier to update programs managed\nby Angel (the excellent process monitor/management tool).  Angel\nstarts processes.  Devil kills running processes when an update is detected.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "devil" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hinotify" or ((hsPkgs.pkgs-errors).buildDepError "hinotify"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }