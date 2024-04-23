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
      specVersion = "1.10";
      identifier = { name = "toilet"; version = "0.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.henning-thielemann.de/toilet/";
      url = "";
      synopsis = "Manage the toilet queue at the IMO";
      description = "At the examinations on 2009-07-15 and 2009-07-16\nof International Mathematic Olympics 2009 in Bremen\nwe had the following problem:\nThere are about 100 teams, each from a different country\nand containing at most 6 pupils.\nWe wanted to make sure that of each country\nonly one pupil is at the toilet at one time.\nThis is, since we expect,\nthat pupils from the same country may exchange information\nin order to push their country in the inofficial country ranking.\nWe also expect that pupils don't exchange information across countries,\nsince the countries are competitors.\n\nOn the first day we handled that problem manually.\nFirst we started with one person\nwho registered pupils going to and coming from toilet.\nWhen it became crowded at toilet,\ntwo people were required for the registration.\nEventually we were four people who are busy with that task.\nWe divided the range of countries alphabetically into 4 ranges of 25 countries\nand had one desk for each country.\nHowever, it remained tedious:\nGuiding pupils to the desk for their country,\nlooking up countries and times,\nwhen one list became full, looking up,\nin which of two lists one should enter the time.\n\nSo I developed a computer program\nthat managed this task on the second day.\nThe program prompts you for identifiers of team members.\nIf the entered identifier belongs to a pupil,\nwho is already on toilet, then it is checked out.\nIf the identifier belongs to a different member of the same team/country,\nthen the program alerts the user, that this is not possible.\nIn this case the pupil must wait until his team mate leaves the toilet.\nIf no team mate of the pupil is on toilet he is checked in to toilet.\nAdditionally all actions are written to a log file.\nIn order to be able to interrupt and restart the program\nthis logfile is also used to initialize the toilet plan on program startup.\n\nI needed about 3 hours to develop that program\nand since only one person was needed to register people,\nit saved 3 persons times 4.5 hours.\nSo the gain was about 10 hours.\nIf you think, that one person with one computer is too slow,\nyou can still divide the range of countries,\nlet work more people on separate machines in parallel.\n\nHere are the avaible commands explained for some examples:\n\n* @ger3@ - register or unregister German team member for toilet\n\n* @ger@  - show who of the German team is on toilet\n\n* @list@ - show all pupils on toilet,\nthis is sometimes needed in order to resolve misspellings";
      buildType = "Simple";
    };
    components = {
      exes = {
        "toilet" = {
          depends = [
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }