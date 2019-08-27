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
      specVersion = "1.18";
      identifier = { name = "microformats2-parser"; version = "0.1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2015 Greg V <greg@unrelenting.technology>";
      maintainer = "greg@unrelenting.technology";
      author = "Greg V";
      homepage = "https://github.com/myfreeweb/microformats2-parser";
      url = "";
      synopsis = "A Microformats 2 parser.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."microformats2-types" or (buildDepError "microformats2-types"))
          (hsPkgs."html-conduit" or (buildDepError "html-conduit"))
          (hsPkgs."xml-lens" or (buildDepError "xml-lens"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          (hsPkgs."xss-sanitize" or (buildDepError "xss-sanitize"))
          (hsPkgs."pcre-heavy" or (buildDepError "pcre-heavy"))
          ];
        };
      exes = {
        "microformats2-parser" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."options" or (buildDepError "options"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
            (hsPkgs."stringable" or (buildDepError "stringable"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."microformats2-parser" or (buildDepError "microformats2-parser"))
            (hsPkgs."microformats2-types" or (buildDepError "microformats2-types"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."microformats2-parser" or (buildDepError "microformats2-parser"))
            (hsPkgs."microformats2-types" or (buildDepError "microformats2-types"))
            (hsPkgs."raw-strings-qq" or (buildDepError "raw-strings-qq"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."html-conduit" or (buildDepError "html-conduit"))
            (hsPkgs."xml-lens" or (buildDepError "xml-lens"))
            ];
          };
        };
      };
    }