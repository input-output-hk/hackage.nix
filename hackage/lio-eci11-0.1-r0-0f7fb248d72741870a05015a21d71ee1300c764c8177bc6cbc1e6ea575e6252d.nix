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
      specVersion = "1.2";
      identifier = { name = "lio-eci11"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "http://www.scs.stanford.edu/~dm/addr/";
      author = "HAILS team";
      homepage = "";
      url = "";
      synopsis = "Labeled IO library";
      description = "A package that provides dynamic tracking of information-flow. This package is intended to only be used at the computer science school ECI 2011 (Buenos Aires, Argentina) <http://www.dc.uba.ar/events/eci/2011/index_html>. Please, refer to the official version of this package if you intended to use it for other purposes.  The /Labeled IO/ (LIO) library provides information flow\ncontrol for incorporating untrusted code within Haskell\napplications.  Most code should import module \"LIO.LIO\" and\nwhichever label type the application is using (e.g.,\n\"LIO.DCLabel\").  The core functionality of the library is\ndocumented in \"LIO.TCB\".  LIO was implemented by David\nMazieres (<http://www.scs.stanford.edu/~dm/>), Deian Stefan\n(<http://www.scs.stanford.edu/~deian/>), Alejandro Russo\n(<http://www.cse.chalmers.se/~russo/>) and John C. Mitchell\n(<http://www.stanford.edu/~jcm/>).\nThe extended version of our paper, that includes the proofs\nis available here:\n<http://www.scs.stanford.edu/~deian/lio/extended.pdf>.\nTo obtain the latest experimental source code, run:\n@git clone http:\\/\\/www.scs.stanford.edu\\/~dm\\/repos\\/lio.git@";
      buildType = "Simple";
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
          (hsPkgs."dclabel-eci11" or (errorHandler.buildDepError "dclabel-eci11"))
          ];
        buildable = true;
        };
      };
    }