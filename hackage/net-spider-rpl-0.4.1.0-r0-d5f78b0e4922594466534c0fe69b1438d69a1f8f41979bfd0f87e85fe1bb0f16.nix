{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { server-test = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "net-spider-rpl"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/net-spider";
      url = "";
      synopsis = "NetSpider data model and utility for RPL networks";
      description = "NetSpider data model and utility for RPL networks. See \"NetSpider.RPL\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."greskell" or ((hsPkgs.pkgs-errors).buildDepError "greskell"))
          (hsPkgs."net-spider" or ((hsPkgs.pkgs-errors).buildDepError "net-spider"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."ip" or ((hsPkgs.pkgs-errors).buildDepError "ip"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."conduit-parse" or ((hsPkgs.pkgs-errors).buildDepError "conduit-parse"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
          (hsPkgs."regex-applicative" or ((hsPkgs.pkgs-errors).buildDepError "regex-applicative"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."net-spider-rpl" or ((hsPkgs.pkgs-errors).buildDepError "net-spider-rpl"))
            (hsPkgs."net-spider" or ((hsPkgs.pkgs-errors).buildDepError "net-spider"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            (hsPkgs."ip" or ((hsPkgs.pkgs-errors).buildDepError "ip"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."fast-logger" or ((hsPkgs.pkgs-errors).buildDepError "fast-logger"))
            ];
          buildable = true;
          };
        "server-test-suite" = {
          depends = (pkgs.lib).optionals (flags.server-test) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."net-spider-rpl" or ((hsPkgs.pkgs-errors).buildDepError "net-spider-rpl"))
            (hsPkgs."net-spider" or ((hsPkgs.pkgs-errors).buildDepError "net-spider"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."hspec-need-env" or ((hsPkgs.pkgs-errors).buildDepError "hspec-need-env"))
            ];
          buildable = if flags.server-test then true else false;
          };
        };
      };
    }