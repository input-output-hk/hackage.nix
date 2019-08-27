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
      specVersion = "1.8";
      identifier = { name = "gdiff-th"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Jonathan Fischoff";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/gdiff-th";
      url = "";
      synopsis = "Generate gdiff GADTs and Instances.";
      description = "Generate gdiff GADTs and Instances. Alpha, but suprisingly functional.\nVery useful for unit testing large data structures. I have tested it on a\nfew very large collections of types and it appears to work. Although,\nwhen I tried to compare two versions of a hackage package with src-exts\nthe (GDiff) performance is terrible. In my personal experience of using\ngdiff in unit testing, the performance has be great. Your mileage may vary.\n\nI wouldn't use it for sending patches over the wire or anything like that,\nI am not convinced there are no bugs in my code yet. There are examples in the @examples@ directory of the\ncabal tarball. Also the main module includes an example in the documentation.\n\n* New in 0.1.0.0 : It's functional.\n\n* New in 0.1.0.4 : Builds on GHC 7.6.1, 7.4.2, and 7.0.3";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."gdiff" or (buildDepError "gdiff"))
          (hsPkgs."th-expand-syns" or (buildDepError "th-expand-syns"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ] ++ [
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."gdiff" or (buildDepError "gdiff"))
            (hsPkgs."th-expand-syns" or (buildDepError "th-expand-syns"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        };
      };
    }