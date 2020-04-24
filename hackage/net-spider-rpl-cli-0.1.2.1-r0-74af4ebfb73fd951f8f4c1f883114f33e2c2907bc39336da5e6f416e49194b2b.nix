{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { static = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "net-spider-rpl-cli"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/net-spider";
      url = "";
      synopsis = "CLI executable of NetSpider.RPL.";
      description = "CLI executable of \"NetSpider.RPL\". It's also an example of \"NetSpider.CLI\" module.\n\n__This package is an experimental release. CLI interface and functionality may change drastically in future.__\n\nFor detail, see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."net-spider" or ((hsPkgs.pkgs-errors).buildDepError "net-spider"))
          (hsPkgs."net-spider-rpl" or ((hsPkgs.pkgs-errors).buildDepError "net-spider-rpl"))
          (hsPkgs."net-spider-cli" or ((hsPkgs.pkgs-errors).buildDepError "net-spider-cli"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."greskell" or ((hsPkgs.pkgs-errors).buildDepError "greskell"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "net-spider-rpl-cli" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."net-spider-rpl-cli" or ((hsPkgs.pkgs-errors).buildDepError "net-spider-rpl-cli"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."net-spider-rpl-cli" or ((hsPkgs.pkgs-errors).buildDepError "net-spider-rpl-cli"))
            (hsPkgs."net-spider" or ((hsPkgs.pkgs-errors).buildDepError "net-spider"))
            (hsPkgs."net-spider-rpl" or ((hsPkgs.pkgs-errors).buildDepError "net-spider-rpl"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."net-spider-cli" or ((hsPkgs.pkgs-errors).buildDepError "net-spider-cli"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."ip" or ((hsPkgs.pkgs-errors).buildDepError "ip"))
            ];
          buildable = true;
          };
        };
      };
    }