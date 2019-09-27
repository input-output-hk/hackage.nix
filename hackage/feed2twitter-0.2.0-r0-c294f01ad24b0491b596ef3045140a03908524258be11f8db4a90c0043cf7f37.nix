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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "feed2twitter"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Lokhorst <tom@lokhorst.eu>";
      author = "Tom Lokhorst";
      homepage = "http://github.com/tomlokhorst/feed2twitter";
      url = "";
      synopsis = "Send posts from a feed to Twitter";
      description = "Reads feeds and tweets each post to a Twitter account.\nThis is both a library and a simple executable build on top\nof it.\n\nThe feed is read only once. To keep updating, call this\nprogram/library every few minutes.\nA local cache of earlier tweets is kept in a file to make\nsure no duplicates are sent.\n\nTo build your own program on top of this library use the\n`atom2twitter` or `rss2twitter` functions. If you need\naccess to the complete feed instead of just individual\nindividual items, use the `feed2twitter` function.\n\nSee the `hackage2twitter` program for an example of how to\nuse this library.\n\nThe executable can be used as such:\n\n> \$ feed2twitter http://example.com/feed.rss username password cache-file 50 [--debug-mode]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."download-curl" or (buildDepError "download-curl"))
          (hsPkgs."feed" or (buildDepError "feed"))
          (hsPkgs."hs-twitter" or (buildDepError "hs-twitter"))
          ];
        buildable = true;
        };
      exes = { "feed2twitter" = { buildable = true; }; };
      };
    }