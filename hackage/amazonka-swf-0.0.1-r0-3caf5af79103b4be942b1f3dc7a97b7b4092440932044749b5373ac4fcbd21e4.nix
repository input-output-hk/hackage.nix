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
      identifier = { name = "amazonka-swf"; version = "0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Simple Workflow Service SDK.";
      description = "Amazon Simple Workflow Service (Amazon SWF) makes it easy to build\napplications that coordinate work across distributed components. In\nAmazon SWF, a task represents a logical unit of work that is performed\nby a component of your application. Coordinating tasks across the\napplication involves managing intertask dependencies, scheduling, and\nconcurrency in accordance with the logical flow of the application.\nAmazon SWF gives you full control over implementing tasks and\ncoordinating them without worrying about underlying complexities such\nas tracking their progress and maintaining their state.\n\n/See:/ <http://docs.aws.amazon.com/amazonswf/latest/apireference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }