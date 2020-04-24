{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { gtk3 = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hoodle-publish"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/hoodle";
      url = "";
      synopsis = "publish hoodle files as a static web site";
      description = "This package provieds a simple tool hoodle-publish which make a static web site from a directory containing hoodle files";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."directory-tree" or ((hsPkgs.pkgs-errors).buildDepError "directory-tree"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hoodle-parser" or ((hsPkgs.pkgs-errors).buildDepError "hoodle-parser"))
          (hsPkgs."hoodle-render" or ((hsPkgs.pkgs-errors).buildDepError "hoodle-render"))
          (hsPkgs."hoodle-types" or ((hsPkgs.pkgs-errors).buildDepError "hoodle-types"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."pdf-toolbox-core" or ((hsPkgs.pkgs-errors).buildDepError "pdf-toolbox-core"))
          (hsPkgs."pdf-toolbox-document" or ((hsPkgs.pkgs-errors).buildDepError "pdf-toolbox-document"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
          ] ++ (if flags.gtk3
          then [
            (hsPkgs."gtk3" or ((hsPkgs.pkgs-errors).buildDepError "gtk3"))
            ]
          else [
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            ]);
        buildable = true;
        };
      exes = {
        "hoodle-publish" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."directory-tree" or ((hsPkgs.pkgs-errors).buildDepError "directory-tree"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hoodle-publish" or ((hsPkgs.pkgs-errors).buildDepError "hoodle-publish"))
            ] ++ (if flags.gtk3
            then [
              (hsPkgs."gtk3" or ((hsPkgs.pkgs-errors).buildDepError "gtk3"))
              ]
            else [
              (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
              ]);
          buildable = true;
          };
        };
      };
    }