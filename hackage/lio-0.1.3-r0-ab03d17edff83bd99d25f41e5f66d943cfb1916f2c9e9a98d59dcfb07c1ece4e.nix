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
      identifier = { name = "lio"; version = "0.1.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Deian Stefan  <deian at cs dot stanford dot edu>";
      author = "HAILS team";
      homepage = "";
      url = "";
      synopsis = "Labeled IO Information Flow Control Library";
      description = "The /Labeled IO/ (LIO) library provides information flow\ncontrol for incorporating untrusted code within Haskell\napplications.  Most code should import module \"LIO\" and\nwhichever label type the application is using (e.g.,\n\"LIO.DCLabel\").  The core functionality of the library is\ndocumented in \"LIO.TCB\".  LIO was implemented by David\nMazieres (<http://www.scs.stanford.edu/~dm/>), Deian Stefan\n(<http://www.scs.stanford.edu/~deian/>), Alejandro Russo\n(<http://www.cse.chalmers.se/~russo/>) and John C. Mitchell\n(<http://www.stanford.edu/~jcm/>).\nThe extended version of our paper, that includes the proofs\nis available here:\n<http://www.scs.stanford.edu/~deian/pubs/stefan:2011:flexible-ext.pdf>.\nThe library depends on the @DCLabel@ module. You can read more on\nDC Labels here:\n<http://www.scs.stanford.edu/~deian/dclabels/>.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."dclabel" or (errorHandler.buildDepError "dclabel"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dclabel" or (errorHandler.buildDepError "dclabel"))
            (hsPkgs."lio" or (errorHandler.buildDepError "lio"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }