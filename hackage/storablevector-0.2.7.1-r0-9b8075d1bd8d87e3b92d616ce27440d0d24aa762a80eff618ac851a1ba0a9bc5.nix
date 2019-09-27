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
    flags = {
      splitbase = true;
      separatesyb = true;
      functorinstance = true;
      buildtests = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "storablevector"; version = "0.2.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <storablevector@henning-thielemann.de>";
      author = "Spencer Janssen <sjanssen@cse.unl.edu>, Henning Thielemann <storablevector@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Storable_Vector";
      url = "";
      synopsis = "Fast, packed, strict storable arrays with a list interface like ByteString";
      description = "Fast, packed, strict storable arrays\nwith a list interface,\na chunky lazy list interface with variable chunk size\nand an interface for write access via the @ST@ monad.\nThis is much like @bytestring@ and @binary@ but can be used for every 'Foreign.Storable.Storable' type.\nSee also packages\n<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/vector>,\n<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/uvector>\nwith a similar intention.\n\nWe do not provide advanced fusion optimization,\nsince especially for lazy vectors\nthis would either be incorrect or not applicable.\nFor fusion see <http://hackage.haskell.org/cgi-bin/hackage-scripts/package/storablevector-streamfusion>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."non-negative" or (buildDepError "non-negative"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ] ++ (if compiler.isJhc && true
          then [
            (hsPkgs."statethread" or (buildDepError "statethread"))
            (hsPkgs."base" or (buildDepError "base"))
            ]
          else if flags.splitbase
            then if flags.separatesyb
              then [
                (hsPkgs."base" or (buildDepError "base"))
                (hsPkgs."syb" or (buildDepError "syb"))
                ]
              else [ (hsPkgs."base" or (buildDepError "base")) ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]);
        buildable = true;
        };
      exes = {
        "test" = {
          depends = (pkgs.lib).optionals (flags.buildtests) ([
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ] ++ (if flags.splitbase
            then [ (hsPkgs."random" or (buildDepError "random")) ] ++ [
              (hsPkgs."base" or (buildDepError "base"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]));
          buildable = if flags.buildtests then true else false;
          };
        "speedtest" = {
          depends = (pkgs.lib).optionals (flags.buildtests) ([
            (hsPkgs."sample-frame" or (buildDepError "sample-frame"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ] ++ [ (hsPkgs."base" or (buildDepError "base")) ]);
          buildable = if flags.buildtests then true else false;
          };
        "speedpointer" = {
          depends = (pkgs.lib).optional (flags.buildtests) (hsPkgs."base" or (buildDepError "base"));
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }