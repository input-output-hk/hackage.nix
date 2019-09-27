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
    flags = { buildbenchmarks = false; splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "sample-frame"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "";
      synopsis = "Handling of samples in an (audio) signal";
      description = "This package provides a type class\nto handle signed and unsigned samples\nof various size and number of channels in a uniform way.\n\nWe expect that you use the types 'Int8', 'Word8' and so on\nfor monophonic samples and thus provide instances of the class for them.\nFurther we define Stereo record and mu-law sample type.\nQuadrophony can be achieved by nested Stereo value,\nbut I'm uncertain, whether this is a good way to go.\nMaybe we add 5+1 channels or so in future.\n\nThis is used by packages @sox@, @alsa@, @synthesizer@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."storable-record" or (buildDepError "storable-record"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ] ++ (if flags.splitbase
          then [ (hsPkgs."base" or (buildDepError "base")) ]
          else [
            (hsPkgs."special-functors" or (buildDepError "special-functors"))
            (hsPkgs."base" or (buildDepError "base"))
            ]);
        buildable = true;
        };
      exes = {
        "speedtest" = {
          depends = (pkgs.lib).optionals (flags.buildbenchmarks) [
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."storable-record" or (buildDepError "storable-record"))
            (hsPkgs."storable-tuple" or (buildDepError "storable-tuple"))
            ];
          buildable = if flags.buildbenchmarks then true else false;
          };
        };
      };
    }