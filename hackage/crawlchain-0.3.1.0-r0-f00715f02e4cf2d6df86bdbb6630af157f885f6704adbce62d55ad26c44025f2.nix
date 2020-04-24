{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "crawlchain"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "7a3ggptwts@snkmail.com";
      author = "Axel Mannhardt";
      homepage = "";
      url = "";
      synopsis = "Simulation user crawl paths";
      description = "Library for simulating user crawl paths (trees) with selectors - takes an initial action and a chain of processing actions to crawl a tree (lazy, depth first) searching for a matching branch.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."http-streams" or ((hsPkgs.pkgs-errors).buildDepError "http-streams"))
          (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "http-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."crawlchain" or ((hsPkgs.pkgs-errors).buildDepError "crawlchain"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."http-streams" or ((hsPkgs.pkgs-errors).buildDepError "http-streams"))
            (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        "html-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."crawlchain" or ((hsPkgs.pkgs-errors).buildDepError "crawlchain"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
            ];
          buildable = true;
          };
        "crawling-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."crawlchain" or ((hsPkgs.pkgs-errors).buildDepError "crawlchain"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."http-streams" or ((hsPkgs.pkgs-errors).buildDepError "http-streams"))
            (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }