{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "flaccuraterip";
        version = "0.3.5";
      };
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
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.deepseq)
            (hsPkgs.HTTP)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
          ];
        };
      };
    };
  }