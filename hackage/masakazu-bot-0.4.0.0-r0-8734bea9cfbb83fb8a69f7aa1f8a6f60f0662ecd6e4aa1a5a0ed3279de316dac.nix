{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = { name = "masakazu-bot"; version = "0.4.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "masakazu.minamiyama@gmail.com";
      author = "minamiyama1994";
      homepage = "https://github.com/minamiyama1994/chomado-bot-on-haskell/tree/minamiyama1994";
      url = "";
      synopsis = "@minamiyama1994_bot on haskell";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "masakazu-bot" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."twitter-conduit" or ((hsPkgs.pkgs-errors).buildDepError "twitter-conduit"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            (hsPkgs."authenticate-oauth" or ((hsPkgs.pkgs-errors).buildDepError "authenticate-oauth"))
            (hsPkgs."twitter-types" or ((hsPkgs.pkgs-errors).buildDepError "twitter-types"))
            (hsPkgs."datetime" or ((hsPkgs.pkgs-errors).buildDepError "datetime"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."persistent-sqlite" or ((hsPkgs.pkgs-errors).buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or ((hsPkgs.pkgs-errors).buildDepError "persistent-template"))
            (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
            (hsPkgs."parsers" or ((hsPkgs.pkgs-errors).buildDepError "parsers"))
            ];
          buildable = true;
          };
        };
      };
    }