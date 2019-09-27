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
      identifier = { name = "WebBits"; version = "2.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007-2011 Brown University, Claudiu Saftoiu,  Arjun Guha, Spiridon Eliopoulos, Copyright (c) 2012 Arjun Guha and Andrey Chudnov";
      maintainer = "Andrey Chudnov <oss@chudnov.com>";
      author = "Arjun Guha, Claudiu Saftoiu, Spiridon Eliopoulos and Andrey Chudnov";
      homepage = "http://github.com/brownplt/webbits";
      url = "";
      synopsis = "JavaScript analysis tools";
      description = "WebBits is a collection of libraries for working with JavaScript, contains a parser, a pretty-printer and a lexical environment analyser. The original author of the package is the PLT group of Brown University (http:\\/\\/www.cs.brown.edu\\/research\\/plt\\/). Changes since version 2.1: the syntax of the try-catch-finally statement has been changed in accordance to the ECMAScript specification -- now it only has at most one catch clause. The original test-suite needs updating to support the current test system: patches are welcome.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."syb" or (buildDepError "syb"))
          ];
        buildable = true;
        };
      };
    }