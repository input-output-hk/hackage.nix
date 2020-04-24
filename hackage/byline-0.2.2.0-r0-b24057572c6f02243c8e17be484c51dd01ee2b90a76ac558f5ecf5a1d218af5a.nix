{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { maintainer = false; build-examples = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "byline"; version = "0.2.2.0"; };
      license = "BSD-2-Clause";
      copyright = "Copyright: (c) 2015,2016 Peter J. Jones";
      maintainer = "Peter Jones <pjones@devalot.com>";
      author = "Peter Jones <pjones@devalot.com>";
      homepage = "http://github.com/pjones/byline";
      url = "";
      synopsis = "Library for creating command-line interfaces (colors, menus, etc.)";
      description = "Byline simplifies writing interactive terminal applications by\nbuilding upon @ansi-terminal@ and @haskeline@.  This makes it\npossible to print messages and prompts that include terminal escape\nsequences such as colors that are automatically disabled when\nstandard input is a file.  It also means that Byline works on both\nPOSIX-compatible systems and on Windows.\n\nThe primary features of Byline include printing messages, prompting\nfor input, and generating custom menus.  It was inspired by the\n@highline@ Ruby library and the @terminal@ library by Craig Roche.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."terminfo-hs" or ((hsPkgs.pkgs-errors).buildDepError "terminfo-hs"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "simple" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."byline" or ((hsPkgs.pkgs-errors).buildDepError "byline"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        "menu" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."byline" or ((hsPkgs.pkgs-errors).buildDepError "byline"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        };
      };
    }