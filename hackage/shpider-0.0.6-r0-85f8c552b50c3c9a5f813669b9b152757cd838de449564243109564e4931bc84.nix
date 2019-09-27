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
      specVersion = "1.2.0";
      identifier = { name = "shpider"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Johnny Morrice <spoon@killersmurf.com>";
      author = "Johnny Morrice";
      homepage = "http://www.killersmurf.com/projects/shpider";
      url = "";
      synopsis = "Web automation library in Haskell.";
      description = "Shpider is a web automation library for Haskell.   It allows you to quickly write crawlers, and for simple cases ( like following links ) even without reading the page source.\n\nIt has useful features such as turning relative links from a page into absolute links, options to authorize transactions only on a given domain, and the option to only download html documents.\n\nIt also provides a nice syntax for filling out forms.\n\nAn example:\n\n> runShpider \$ do\n>      download \"http://apage.com\"\n>      theForm : _ <- getFormsByAction \"http://anotherpage.com\"\n>      sendForm \$ fillOutForm theForm \$ pairs \$ do\n>            \"occupation\" =: \"unemployed Haskell programmer\"\n>            \"location\" =: \"mother's house\"\n\nShpider contains a patched version of the curl package ( the original package's garbage-collection caused non-deterministic behaviour ).  The curl licence is therefore distributed with this package.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
          (hsPkgs."tagsoup-parsec" or (buildDepError "tagsoup-parsec"))
          (hsPkgs."url" or (buildDepError "url"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        libs = [ (pkgs."curl" or (sysDepError "curl")) ];
        buildable = true;
        };
      };
    }