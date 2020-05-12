{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.16";
      identifier = { name = "clckwrks"; version = "0.23.15"; };
      license = "BSD-3-Clause";
      copyright = "2012-2015 SeeReason Partners LLC, Jeremy Shaw";
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
          (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-qq" or (errorHandler.buildDepError "aeson-qq"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."happstack-authenticate" or (errorHandler.buildDepError "happstack-authenticate"))
          (hsPkgs."happstack-hsp" or (errorHandler.buildDepError "happstack-hsp"))
          (hsPkgs."happstack-jmacro" or (errorHandler.buildDepError "happstack-jmacro"))
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
          (hsPkgs."happstack-server-tls" or (errorHandler.buildDepError "happstack-server-tls"))
          (hsPkgs."hsp" or (errorHandler.buildDepError "hsp"))
          (hsPkgs."hsx-jmacro" or (errorHandler.buildDepError "hsx-jmacro"))
          (hsPkgs."hsx2hs" or (errorHandler.buildDepError "hsx2hs"))
          (hsPkgs."ixset" or (errorHandler.buildDepError "ixset"))
          (hsPkgs."jmacro" or (errorHandler.buildDepError "jmacro"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."reform" or (errorHandler.buildDepError "reform"))
          (hsPkgs."reform-happstack" or (errorHandler.buildDepError "reform-happstack"))
          (hsPkgs."reform-hsp" or (errorHandler.buildDepError "reform-hsp"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."time-locale-compat" or (errorHandler.buildDepError "time-locale-compat"))
          (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
          (hsPkgs."uuid-orphans" or (errorHandler.buildDepError "uuid-orphans"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."userid" or (errorHandler.buildDepError "userid"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."web-plugins" or (errorHandler.buildDepError "web-plugins"))
          (hsPkgs."web-routes" or (errorHandler.buildDepError "web-routes"))
          (hsPkgs."web-routes-happstack" or (errorHandler.buildDepError "web-routes-happstack"))
          (hsPkgs."web-routes-hsp" or (errorHandler.buildDepError "web-routes-hsp"))
          (hsPkgs."web-routes-th" or (errorHandler.buildDepError "web-routes-th"))
          (hsPkgs."xss-sanitize" or (errorHandler.buildDepError "xss-sanitize"))
          ] ++ (if flags.network-uri
          then [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]);
        libs = [ (pkgs."ssl" or (errorHandler.sysDepError "ssl")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsx2hs or (pkgs.buildPackages.hsx2hs or (errorHandler.buildToolDepError "hsx2hs")))
          ];
        buildable = true;
        };
      };
    }