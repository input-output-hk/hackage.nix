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
      specVersion = "1.10";
      identifier = { name = "flaccuraterip"; version = "0.3.6"; };
      license = "GPL-3.0-only";
      copyright = "© 2012-2016 Nicola Squartini";
      maintainer = "Nicola Squartini <tensor5@gmail.com>";
      author = "Nicola Squartini";
      homepage = "http://noaxiom.org/flAccurateRip";
      url = "";
      synopsis = "Verify FLAC files ripped form CD using AccurateRip™";
      description = "/flAccurateRip/ is a command line tool to verify the accuracy of FLAC files\nripped from CD, using the information contained in the AccurateRip™ database\nabout other rips of the same CD.\n\nUsage: suppose you ripped a CD into @track01.flac@, @track02.flac@, ...,\n@trackNN.flac@. Open a shell in the directory containing the FLAC files, and\nrun:\n\n>\$ flaccuraterip track01.flac track02.flac ... trackNN.flac\n\nIf a pressing of this CD is present in the AccurateRip™ database,\n@flaccuraterip@ will output the ripping accuracy for each track. If the CD was\nripped without setting the drive offset, you should use the flag\n@--with-sample-offset=N@, where N is the offset indicated in\n<http://accuraterip.com/driveoffsets.htm> for your drive.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "flaccuraterip" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }