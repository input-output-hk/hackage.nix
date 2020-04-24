{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "epubname"; version = "2.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2008-2011 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli";
      homepage = "http://ui3.info/d/proj/epubname.html";
      url = "";
      synopsis = "Rename epub ebook files based on meta information";
      description = "Command-line utility for renaming epub ebook files\nbased on the OPF Package metadata.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "epubname" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."epub-metadata" or ((hsPkgs.pkgs-errors).buildDepError "epub-metadata"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }