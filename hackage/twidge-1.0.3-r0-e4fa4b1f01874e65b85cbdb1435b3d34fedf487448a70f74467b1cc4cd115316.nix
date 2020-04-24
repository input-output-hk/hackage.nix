{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { withbitly = false; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "twidge"; version = "1.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2006-2010 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/twidge";
      url = "";
      synopsis = "Unix Command-Line Twitter and Identica Client";
      description = "twidge is a client for microblogging sites such as Twitter and\nIdentica (identi.ca). Microblogging sites let you post short\none-paragraph updates, follow the updates that your friends post, and\ninteract with everyone in the site in a conversation style.\n\ntwidge is a client to make working with microblogging sites faster\nand easier. It is extremely versatile, and can be customized to work\nthe way you want to work, and combined with other tools to do just\nabout anything.\n\ntwidge can be used quite nicely interactively from the shell. It is\nuseful directly as-is, and with simple shell aliases can make a\nhighly efficient system to do exactly what you want. It is perfectly\ncapable of being your only client for microblogging.\n\ntwidge also can be used in an automated way, via cron(1), or it can\neven integrate with your email system.\n\nA full list of twidge features, along with numerous suggestions on\nhow to use it, can be found at the twidge website at\nhttp://software.complete.org/twidge.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "twidge" = {
          depends = [
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
            (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."hoauth" or ((hsPkgs.pkgs-errors).buildDepError "hoauth"))
            (hsPkgs."ConfigFile" or ((hsPkgs.pkgs-errors).buildDepError "ConfigFile"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."HSH" or ((hsPkgs.pkgs-errors).buildDepError "HSH"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
            ] ++ (pkgs.lib).optional (flags.withbitly) (hsPkgs."Bitly" or ((hsPkgs.pkgs-errors).buildDepError "Bitly"));
          buildable = true;
          };
        };
      };
    }