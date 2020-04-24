{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "funbot-git-hook"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "https://notabug.org/fr33domlover/funbot-git-hook/";
      url = "";
      synopsis = "Git hook which sends events to FunBot.";
      description = "This is program to use as a Git post-receive hook, which collects new commits\nand tags made in the Git push, and reports them to a running instance of\n<https://notabug.org/fr33domlover/funbot FunBot>, so that the bot can\nannounce the event to IRC.\n\nSee the /README.md/ for instructions.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "funbot-client-post-receive" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hit" or ((hsPkgs.pkgs-errors).buildDepError "hit"))
            (hsPkgs."funbot-client" or ((hsPkgs.pkgs-errors).buildDepError "funbot-client"))
            (hsPkgs."funbot-ext-events" or ((hsPkgs.pkgs-errors).buildDepError "funbot-ext-events"))
            (hsPkgs."template" or ((hsPkgs.pkgs-errors).buildDepError "template"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ] ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
              ]);
          buildable = true;
          };
        };
      };
    }