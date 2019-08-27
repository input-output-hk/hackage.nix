let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.16";
      identifier = { name = "clckwrks"; version = "0.23.19.1"; };
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
          (hsPkgs."acid-state" or (buildDepError "acid-state"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-qq" or (buildDepError "aeson-qq"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."happstack-authenticate" or (buildDepError "happstack-authenticate"))
          (hsPkgs."happstack-hsp" or (buildDepError "happstack-hsp"))
          (hsPkgs."happstack-jmacro" or (buildDepError "happstack-jmacro"))
          (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
          (hsPkgs."happstack-server-tls" or (buildDepError "happstack-server-tls"))
          (hsPkgs."hsp" or (buildDepError "hsp"))
          (hsPkgs."hsx-jmacro" or (buildDepError "hsx-jmacro"))
          (hsPkgs."hsx2hs" or (buildDepError "hsx2hs"))
          (hsPkgs."ixset" or (buildDepError "ixset"))
          (hsPkgs."jmacro" or (buildDepError "jmacro"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."reform" or (buildDepError "reform"))
          (hsPkgs."reform-happstack" or (buildDepError "reform-happstack"))
          (hsPkgs."reform-hsp" or (buildDepError "reform-hsp"))
          (hsPkgs."safecopy" or (buildDepError "safecopy"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."time-locale-compat" or (buildDepError "time-locale-compat"))
          (hsPkgs."uuid-orphans" or (buildDepError "uuid-orphans"))
          (hsPkgs."uuid-types" or (buildDepError "uuid-types"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."userid" or (buildDepError "userid"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."web-plugins" or (buildDepError "web-plugins"))
          (hsPkgs."web-routes" or (buildDepError "web-routes"))
          (hsPkgs."web-routes-happstack" or (buildDepError "web-routes-happstack"))
          (hsPkgs."web-routes-hsp" or (buildDepError "web-routes-hsp"))
          (hsPkgs."web-routes-th" or (buildDepError "web-routes-th"))
          (hsPkgs."xss-sanitize" or (buildDepError "xss-sanitize"))
          ] ++ (if flags.network-uri
          then [
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            ]
          else [ (hsPkgs."network" or (buildDepError "network")) ]);
        libs = [ (pkgs."ssl" or (sysDepError "ssl")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsx2hs or (pkgs.buildPackages.hsx2hs or (buildToolDepError "hsx2hs")))
          ];
        };
      };
    }