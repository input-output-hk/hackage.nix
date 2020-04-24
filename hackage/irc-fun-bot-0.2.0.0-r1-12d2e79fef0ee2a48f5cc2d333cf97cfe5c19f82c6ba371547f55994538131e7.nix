{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "irc-fun-bot"; version = "0.2.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/irc-fun-bot/";
      url = "";
      synopsis = "Library for writing fun IRC bots.";
      description = "One day an idea came up on the #freepost IRC channel: We didn't need much of\nthe serious features IRC bots provide, but we could develop an IRC bot\ncollaboratively, for fun and for learning new skills and languages! I also\nthought this is a great chance for people to quickly see their code in real\nuse, which is motivating when learning programming, and it's a chance to\nintroduce Haskell to the community.\n\nThis library powers FunBot (which at the time of writing runs under the\nnickname /fpbot/ in Freenode) and its development is therefore driven by\nactual bot needs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."fast-logger" or ((hsPkgs.pkgs-errors).buildDepError "fast-logger"))
          (hsPkgs."irc-fun-client" or ((hsPkgs.pkgs-errors).buildDepError "irc-fun-client"))
          (hsPkgs."irc-fun-messages" or ((hsPkgs.pkgs-errors).buildDepError "irc-fun-messages"))
          (hsPkgs."settings" or ((hsPkgs.pkgs-errors).buildDepError "settings"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."time-interval" or ((hsPkgs.pkgs-errors).buildDepError "time-interval"))
          (hsPkgs."time-units" or ((hsPkgs.pkgs-errors).buildDepError "time-units"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }