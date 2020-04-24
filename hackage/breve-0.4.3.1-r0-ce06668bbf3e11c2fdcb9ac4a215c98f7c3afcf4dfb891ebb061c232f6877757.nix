{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "breve"; version = "0.4.3.1"; };
      license = "MIT";
      copyright = "(C) Michele Guerini Rocco 2015";
      maintainer = "micheleguerinirocco@me.com";
      author = "rnhmjoj";
      homepage = "https://github.com/rnhmjoj/breve";
      url = "";
      synopsis = "a url shortener";
      description = "Breve is a web application that provides a simple interface to\nshortening long urls creating links smaller and easier to remember.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "breve" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."warp-tls" or ((hsPkgs.pkgs-errors).buildDepError "warp-tls"))
            (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
            (hsPkgs."Spock" or ((hsPkgs.pkgs-errors).buildDepError "Spock"))
            (hsPkgs."Spock-core" or ((hsPkgs.pkgs-errors).buildDepError "Spock-core"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."wai-middleware-static" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-static"))
            (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."hashtables" or ((hsPkgs.pkgs-errors).buildDepError "hashtables"))
            (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."xdg-basedir" or ((hsPkgs.pkgs-errors).buildDepError "xdg-basedir"))
            (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }