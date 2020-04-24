{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "clckwrks"; version = "0.20.2"; };
      license = "BSD-3-Clause";
      copyright = "2012 SeeReason Partners LLC, Jeremy Shaw";
      maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
      author = "Jeremy Shaw";
      homepage = "http://www.clckwrks.com/";
      url = "";
      synopsis = "A secure, reliable content management system (CMS) and blogging platform";
      description = "clckwrks (pronounced, clockworks) aims to compete\ndirectly with popular PHP-based blogging and CMS\nplatforms. Clckwrks aims to support one-click\ninstallation of plugins and themes. End users\nshould be able to use it with zero Haskell\nknowledge. Haskell developers can extend clckwrks\nby creating new plugins or by building sites\naround the existing clckwrks core and plugins.\n\nclckwrks is still in very early development. Not all features have been implement yet.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."acid-state" or ((hsPkgs.pkgs-errors).buildDepError "acid-state"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."happstack-authenticate" or ((hsPkgs.pkgs-errors).buildDepError "happstack-authenticate"))
          (hsPkgs."happstack-hsp" or ((hsPkgs.pkgs-errors).buildDepError "happstack-hsp"))
          (hsPkgs."happstack-server" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server"))
          (hsPkgs."happstack-server-tls" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server-tls"))
          (hsPkgs."hsp" or ((hsPkgs.pkgs-errors).buildDepError "hsp"))
          (hsPkgs."hsx-jmacro" or ((hsPkgs.pkgs-errors).buildDepError "hsx-jmacro"))
          (hsPkgs."ixset" or ((hsPkgs.pkgs-errors).buildDepError "ixset"))
          (hsPkgs."jmacro" or ((hsPkgs.pkgs-errors).buildDepError "jmacro"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."reform" or ((hsPkgs.pkgs-errors).buildDepError "reform"))
          (hsPkgs."reform-happstack" or ((hsPkgs.pkgs-errors).buildDepError "reform-happstack"))
          (hsPkgs."reform-hsp" or ((hsPkgs.pkgs-errors).buildDepError "reform-hsp"))
          (hsPkgs."safecopy" or ((hsPkgs.pkgs-errors).buildDepError "safecopy"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."web-plugins" or ((hsPkgs.pkgs-errors).buildDepError "web-plugins"))
          (hsPkgs."web-routes" or ((hsPkgs.pkgs-errors).buildDepError "web-routes"))
          (hsPkgs."web-routes-happstack" or ((hsPkgs.pkgs-errors).buildDepError "web-routes-happstack"))
          (hsPkgs."web-routes-hsp" or ((hsPkgs.pkgs-errors).buildDepError "web-routes-hsp"))
          (hsPkgs."web-routes-th" or ((hsPkgs.pkgs-errors).buildDepError "web-routes-th"))
          (hsPkgs."xss-sanitize" or ((hsPkgs.pkgs-errors).buildDepError "xss-sanitize"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsx2hs or (pkgs.buildPackages.hsx2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsx2hs")))
          ];
        buildable = true;
        };
      };
    }