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
      identifier = { name = "fast-tagsoup-utf8-only"; version = "1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Vladimir Shabanov 2011-2012";
      maintainer = "Vladimir Shabanov <vshabanoff@gmail.com>";
      author = "Vladimir Shabanov <vshabanoff@gmail.com>";
      homepage = "https://github.com/vshabanov/fast-tagsoup";
      url = "";
      synopsis = "Fast parser for tagsoup package";
      description = "\nFast TagSoup parser. Speeds of 20-200MB/sec were observed.\n\nWorks only with strict bytestrings.\n\nThis library is intended to be used in conjunction with the original @tagsoup@ package:\n\n> import Text.HTML.TagSoup hiding (parseTags, renderTags)\n> import Text.HTML.TagSoup.Fast.Utf8Only\n\nBesides speed @fast-tagsoup@ correctly handles HTML @\\<script\\>@ and @\\<style\\>@ tags and converts tags to lower case.\nThis fork purposefully removes support for parsing non-utf8 documents, to avoid dependency on text-icu.\nIf you need to handle other encodings, refer to the original <http://hackage.haskell.org/package/fast-tagsoup>\n\nThis parser is used in production in BazQux Reader feeds and comments crawler.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
          ];
        };
      };
    }