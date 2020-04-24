{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "xdcc"; version = "1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "git@jangerlinger.de";
      author = "Jan Gerlinger";
      homepage = "https://github.com/JanGe/xdcc";
      url = "";
      synopsis = "A wget-like utility for retrieving files from XDCC bots on\nIRC";
      description = "XDCC (eXtended DCC) is a protocol used by IRC bots to make\nfiles available for transfer. This utility can be used to\nretrieve such files.\n\nSee <https://de.wikipedia.org/wiki/XDCC> for\nmore details.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "xdcc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ascii-progress" or ((hsPkgs.pkgs-errors).buildDepError "ascii-progress"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
            (hsPkgs."concurrent-extra" or ((hsPkgs.pkgs-errors).buildDepError "concurrent-extra"))
            (hsPkgs."concurrent-output" or ((hsPkgs.pkgs-errors).buildDepError "concurrent-output"))
            (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
            (hsPkgs."iproute" or ((hsPkgs.pkgs-errors).buildDepError "iproute"))
            (hsPkgs."irc-ctcp" or ((hsPkgs.pkgs-errors).buildDepError "irc-ctcp"))
            (hsPkgs."irc-dcc" or ((hsPkgs.pkgs-errors).buildDepError "irc-dcc"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."path" or ((hsPkgs.pkgs-errors).buildDepError "path"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."simpleirc" or ((hsPkgs.pkgs-errors).buildDepError "simpleirc"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }