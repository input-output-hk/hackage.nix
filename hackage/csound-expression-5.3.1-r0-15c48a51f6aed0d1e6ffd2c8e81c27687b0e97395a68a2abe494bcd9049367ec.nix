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
      specVersion = "1.6";
      identifier = { name = "csound-expression"; version = "5.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/csound-expression";
      url = "";
      synopsis = "library to make electronic music";
      description = "Welcome to the simplest textual synthesizer.\n\n> dac $ osc 440\n\nCsound-expression is a Haskell framework for computer music.\nWith the help of the library we can create our instruments on the fly.\nA few lines in the interpreter is enough to get the cool sound going\nout of your speakers. It can be used for simple daily sound-file processing\nor for a full-blown live performances.\n\nGot interested? Check out the guide: <https://github.com/anton-k/csound-expression/blob/master/tutorial/Index.md>\n\nAcknowledgements (I'd like to mention those who supported me a lot with their music and ideas):\n\n* music: entertainment for the braindead, three pandas and the moon, odno no, ann's'annat & alizbar, toe, iamthemorning, atoms for piece / radiohead, loscil, boards of canada,\nHozan Yamamoto, Tony Scott and Shinichi Yuize.\n\n* ideas: Conal Elliott, Oleg Kiselyov, Paul Hudak, Gabriel Gonzalez, Rich Hickey and Csound's community.\n* Thanks a lot to all who patiently answered my questions and provided skillful solutions, encouragement and ideas:\n\nIain McCurdy, Victor Lazzarini, Rory Walsh, Steven Yi, John Ffitch, Joachim Heintz, Peter Burgess, Dr. Richard Boulanger, Michael Gogins, Oeyvind Brandtsegg,\nRichard Dobson, Partev Barr Sarkissian, Dave Phillips, Guillermo Senna, Art Hunkins,\nBen McAllister, Michael Rhoades, Gleb Rogozinsky, Eugene Cherny, Brian Merchant, Wolf Peuker, Hlöðver Sigurðsson, Aaron Krister Johnson, Andy Fillebrown and friends :)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."Boolean" or (errorHandler.buildDepError "Boolean"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."csound-expression-typed" or (errorHandler.buildDepError "csound-expression-typed"))
          (hsPkgs."csound-expression-dynamic" or (errorHandler.buildDepError "csound-expression-dynamic"))
          (hsPkgs."temporal-media" or (errorHandler.buildDepError "temporal-media"))
          (hsPkgs."csound-expression-opcodes" or (errorHandler.buildDepError "csound-expression-opcodes"))
        ];
        buildable = true;
      };
    };
  }