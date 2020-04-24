{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "imagepaste"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "baltazar.bz@gmail.com";
      author = "Yuri Bochkarev";
      homepage = "https://bitbucket.org/balta2ar/imagepaste";
      url = "";
      synopsis = "Command-line image paste utility";
      description = "Command-line utility to paste images to image hosting sites.\nImage hosting sites are internally called engines. Some engines\nsupport pasting not just image files but any files so with\nsome engines the program can be used as a file sharing client.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "imagepaste" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."vcs-revision" or ((hsPkgs.pkgs-errors).buildDepError "vcs-revision"))
            ];
          buildable = true;
          };
        };
      };
    }