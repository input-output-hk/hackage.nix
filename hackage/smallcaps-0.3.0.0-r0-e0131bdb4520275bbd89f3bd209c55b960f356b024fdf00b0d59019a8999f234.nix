{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "smallcaps"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "stefan.berthold@gmx.net";
      author = "Stefan Berthold";
      homepage = "";
      url = "";
      synopsis = "A library and a program for pre-processing LaTeX files";
      description = "smallcaps is a pre-processor library for LaTeX files.\nThe library comes with an executable that makes most\nfunctionality accessible through a command line interface.\nThe pre-processor formats sequences of uppercase letters\nwith TeX's @\\\\small@ macro or whatever you configure.\nUppercase letters at the beginning of sentences are not\nformatted. Other formatting conditions can be configured by\nthe user.\n\nThe executable can be configured through its command line\narguments as well as through TeX comments. In the default\nconfiguration, lesscase does not change the content of any\nmacro argument or environment (different from document).\nMore and less restrictive configuration profiles can be\nactivated and adapted. Configurations can be stored and\nrestored at any time, even while processing the input\nfile.\n\n[\"SmallCaps\"]\nexports the main program as library.\n\n[\"SmallCaps.Config\"]\nspecifies the default configuration values for\n\"SmallCaps\".\n\n[\"SmallCaps.TeXParser\"]\nparses 'Text' to a 'TeXElement' token stream.\n\n[\"SmallCaps.TeXLaTeXParser\"]\nparses a 'TeXElement' token stream and produces a\n'LaTeXElement' token stream.\n\n[\"SmallCaps.DocumentParser\"]\nreplaces uppercase letters in 'LaTeXElement' token\nstreams.\n\nA simple program can be defined as\n\n@\nimport Data.Default   ( def )\nimport SmallCaps      ( smallcaps )\nmain = smallcaps def\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "lesscase" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."smallcaps" or ((hsPkgs.pkgs-errors).buildDepError "smallcaps"))
            ];
          buildable = true;
          };
        };
      tests = {
        "texparser" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."smallcaps" or ((hsPkgs.pkgs-errors).buildDepError "smallcaps"))
            ];
          buildable = true;
          };
        "texlatexparser" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."smallcaps" or ((hsPkgs.pkgs-errors).buildDepError "smallcaps"))
            ];
          buildable = true;
          };
        "inputfiles" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."smallcaps" or ((hsPkgs.pkgs-errors).buildDepError "smallcaps"))
            ];
          buildable = true;
          };
        "configparser" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."smallcaps" or ((hsPkgs.pkgs-errors).buildDepError "smallcaps"))
            ];
          buildable = true;
          };
        "printableparser" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."smallcaps" or ((hsPkgs.pkgs-errors).buildDepError "smallcaps"))
            ];
          buildable = true;
          };
        "documentparser" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."smallcaps" or ((hsPkgs.pkgs-errors).buildDepError "smallcaps"))
            ];
          buildable = true;
          };
        };
      };
    }