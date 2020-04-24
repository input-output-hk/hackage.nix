{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "agda-snippets"; version = "2.5.1"; };
      license = "BSD-3-Clause";
      copyright = "Liam O'Connor, 2015";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor";
      homepage = "http://github.com/liamoc/agda-snippets#readme";
      url = "";
      synopsis = "Render just the Agda snippets of a literate Agda file to HTML";
      description = "This library provides a very simple function that translates just the code blocks\nof a literate Agda file to colourised, hyperlinked HTML. The output of this\ncan then be run through Pandoc or other document processors to allow literate\nAgda to be comfortably written in any format that allows inline HTML snippets.\n\nThere is also a simple command-line application (@agda-snippets@) included\nthat can be used as a standalone file processor.\n\nThe location of library source hyperlinks is configurable, as is the CSS class\ngiven to Agda code blocks.\n\nThis package is pinned to particular Agda versions, and therefore does not\nobey the PVP, as Agda does not. You should use whichever version of this library\ncorresponds to the Agda version you wish to use.\n\nThe development version of this library, available from GitHub, may work with\ndevelopment versions of Agda, although it could be broken at any time. If you\nstick to stable versions, you should be fine.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Agda" or ((hsPkgs.pkgs-errors).buildDepError "Agda"))
          (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "agda-snippets" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."agda-snippets" or ((hsPkgs.pkgs-errors).buildDepError "agda-snippets"))
            (hsPkgs."Agda" or ((hsPkgs.pkgs-errors).buildDepError "Agda"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }