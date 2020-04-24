{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "pandoc-vimhl"; version = "0.1.2.2"; };
      license = "BSD-3-Clause";
      copyright = "2016-2018 Alexey Radkov";
      maintainer = "Alexey Radkov <alexey.radkov@gmail.com>";
      author = "Alexey Radkov <alexey.radkov@gmail.com>";
      homepage = "http://github.com/lyokha/vim-publish-helper";
      url = "";
      synopsis = "Pandoc filter for native Vim code highlighting";
      description = "Pandoc filter for native Vim code highlighting in HTML and\nPDF documents. Requires Vim and plugin\n<http://github.com/lyokha/vim-publish-helper vim-publish-helper>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "vimhl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."cond" or ((hsPkgs.pkgs-errors).buildDepError "cond"))
            ];
          buildable = true;
          };
        };
      };
    }