{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "xdcc"; version = "1.1.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "git@jangerlinger.de";
      author = "Jan Gerlinger";
      homepage = "https://github.com/JanGe/xdcc";
      url = "";
      synopsis = "A wget-like utility for retrieving files from XDCC bots on\nIRC";
      description = "XDCC (eXtended DCC) is a protocol used by IRC bots to make\nfiles available for transfer. This utility can be used to\nretrieve such files.\n\nSee <https://github.com/JanGe/xdcc/blob/master/README.md>\nfor usage instructions.\n\nSee <https://de.wikipedia.org/wiki/XDCC> for\nmore details.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "xdcc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ascii-progress" or ((hsPkgs.pkgs-errors).buildDepError "ascii-progress"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
            (hsPkgs."concurrent-output" or ((hsPkgs.pkgs-errors).buildDepError "concurrent-output"))
            (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
            (hsPkgs."iproute" or ((hsPkgs.pkgs-errors).buildDepError "iproute"))
            (hsPkgs."irc-client" or ((hsPkgs.pkgs-errors).buildDepError "irc-client"))
            (hsPkgs."irc-dcc" or ((hsPkgs.pkgs-errors).buildDepError "irc-dcc"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."path" or ((hsPkgs.pkgs-errors).buildDepError "path"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
            (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
            (hsPkgs."signal" or ((hsPkgs.pkgs-errors).buildDepError "signal"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
            ];
          buildable = true;
          };
        };
      };
    }