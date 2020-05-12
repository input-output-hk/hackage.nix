{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "flaccuraterip"; version = "0.2"; };
      license = "GPL-3.0-only";
      copyright = "Copyright © 2012 Nicola Squartini";
      maintainer = "Nicola Squartini <tensor5@gmail.com>";
      author = "Nicola Squartini";
      homepage = "http://noaxiom.org/flAccurateRip";
      url = "";
      synopsis = "Verify FLAC files ripped form CD using AccurateRip™";
      description = "/flAccurateRip/ is a command line tool to verify the accuracy of FLAC\nfiles ripped form CD, using the information contained in the\nAccurateRip™ database about other rips of the same CD.\n\nUsage: suppose you ripped a CD into @track01.flac@, @track02.flac@,\n..., @trackNN.flac@. Open a shell in the directory containing the\nFLAC files, and run:\n\n>>> flaccuraterip track01.flac track02.flac ... trackNN.flac\n\nIf a pressing of this CD is present in the AccurateRip™ database,\n@flaccuraterip@ will output the ripping accuracy for each track. If\nthe CD was ripped without setting the drive offset, you should use\nthe flag @--sample-offset=N@, where N is the offset indicated in\n<http://accuraterip.com/driveoffsets.htm> for your drive.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "flaccuraterip" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }