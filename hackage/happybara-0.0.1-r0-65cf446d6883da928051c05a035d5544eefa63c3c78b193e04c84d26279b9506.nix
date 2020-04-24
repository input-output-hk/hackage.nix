{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "happybara"; version = "0.0.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2014 Charles Strahan";
      maintainer = "charles.c.strahan@gmail.com";
      author = "Charles Strahan";
      homepage = "https://github.com/cstrahan/happybara";
      url = "";
      synopsis = "Acceptance test framework for web applications";
      description = "/About/\n\nHappybara is an acceptance test framework inspired by the popular Ruby library\n\\\"Capybara\\\". A short example of Happybara's expressive DSL:\n\n>visit \"http://happybara-is-awesome.com\"\n>within \$ xpath \"//form[@id='vote-for-happybara']\" \$ do\n>   fillIn (fillableField \"First Name\" [ ]) \"Bob\"\n>   fillIn (fillableField \"Last Name\"  [ ]) \"Smith\"\n>\n>   click \$ button \"Vote!\" [ disabled False ]\n\n/Learning Happybara/\n\nI would suggest start with these resources (in order):\n\n* <https://github.com/cstrahan/happybara/ The Happybara Readme>\n\n* <http://hackage.haskell.org/package/happybara/docs/Happybara.html The Happybara Module docs>\n\nHappy web testing!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          ];
        buildable = true;
        };
      };
    }