{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lord"; version = "1.20131124"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "remotenonsense@gmail.com";
      author = "rnons";
      homepage = "https://github.com/rnons/lord";
      url = "";
      synopsis = "A command line interface to online radios.";
      description = "A unified interface to online radio service providers, use mpd as backend.\n\nSupported radios:\n<http://radioreddit.com>\n<http://cmd.fm>\n<http://douban.fm>\n<http://jing.fm>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lord" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."attoparsec-conduit" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec-conduit"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
            (hsPkgs."daemons" or ((hsPkgs.pkgs-errors).buildDepError "daemons"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."fast-logger" or ((hsPkgs.pkgs-errors).buildDepError "fast-logger"))
            (hsPkgs."html-conduit" or ((hsPkgs.pkgs-errors).buildDepError "html-conduit"))
            (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."libmpd" or ((hsPkgs.pkgs-errors).buildDepError "libmpd"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."attoparsec-conduit" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec-conduit"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
            (hsPkgs."daemons" or ((hsPkgs.pkgs-errors).buildDepError "daemons"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."fast-logger" or ((hsPkgs.pkgs-errors).buildDepError "fast-logger"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."html-conduit" or ((hsPkgs.pkgs-errors).buildDepError "html-conduit"))
            (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."libmpd" or ((hsPkgs.pkgs-errors).buildDepError "libmpd"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }