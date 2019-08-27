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
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hamlet"; version = "0.7.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://docs.yesodweb.com/";
      url = "";
      synopsis = "Haml-like template files that are compile-time checked";
      description = "Hamlet gives you a type-safe tool for generating HTML code. It works via Quasi-Quoting, and generating extremely efficient output code. The syntax is white-space sensitive, and it helps you avoid cross-site scripting issues and 404 errors. Please see the documentation at <http://docs.yesodweb.com/book/hamlet/> for more details.\n\nAs a quick overview, here is a sample Hamlet template (note that, due to some issues with Haddock, I have replaced braces (&#123; and &#125;) with double-square-brackets ([[ and ]])):\n\n> !!!\n> <html\n>     <head\n>         <title>Hamlet Demo\n>     <body\n>         <h1>Information on #[[name person]]\n>         <p>#[[name person]] is #[[age person]] years old.\n>         <h2\n>             \$if isMarried person\n>                 Married\n>             \$else\n>                 Not married\n>         <ul\n>             \$forall child <- children person\n>                 <li>#[[child]]\n>         <p\n>             <a href=@[[page person]]>See the page.\n>         ^[[footer]]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."failure" or (buildDepError "failure"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."json-types" or (buildDepError "json-types"))
          (hsPkgs."json-enumerator" or (buildDepError "json-enumerator"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          ];
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            ];
          };
        "hamlet6to7" = {
          depends = [ (hsPkgs."QuickCheck" or (buildDepError "QuickCheck")) ];
          };
        };
      };
    }