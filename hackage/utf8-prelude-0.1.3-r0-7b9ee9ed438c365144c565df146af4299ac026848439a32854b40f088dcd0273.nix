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
      specVersion = "1.2";
      identifier = { name = "utf8-prelude"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 by Péter Diviánszky";
      maintainer = "Péter Diviánszky <divip@aszt.inf.elte.hu>";
      author = "Péter Diviánszky <divip@aszt.inf.elte.hu>";
      homepage = "";
      url = "";
      synopsis = "Prelude and System.IO with UTF8 text I/O";
      description = "utf8-prelude provides variants of \"Prelude\" and \"System.IO\" using UTF8 text I/O operations, making\nUTF8 text I/O even simpler.\n\nThree simple steps to switch to UTF8 with your Haskell code:\n\n* In all modules import Prelude explicitly and replace every occurrence of \"Prelude\" with \"UTF8Prelude\".\n\n* Use the NoImplicitPrelude language extension.\n\n* In all modules replace every occurrence of \"System.IO\" with \"System.UTF8IO\".\n\nutf8-prelude also provides a basic testing tool:\nutf8-test tests several functions regarding UTF8 text I/O.\nNote: utf8-test creates a file named writeFile_test.txt in the current working directory.\n\nutf8-prelude is based on utf8-string:\n<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/utf8-string/index.html>\n\nThis package will be obsolate with GHC if GHC will have porper unicode support for text I/O.\nIt is planned beyond GHC 6.10:\n<http://hackage.haskell.org/trac/ghc/wiki/Status/Releases>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          ];
        };
      exes = { "utf8-test" = {}; };
      };
    }