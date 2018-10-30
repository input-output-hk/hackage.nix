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
        name = "amazonka-datapipeline";
        version = "1.3.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Data Pipeline SDK.";
      description = "AWS Data Pipeline configures and manages a data-driven workflow called a\npipeline. AWS Data Pipeline handles the details of scheduling and\nensuring that data dependencies are met so that your application can\nfocus on processing the data.\nAWS Data Pipeline provides a JAR implementation of a task runner called\nAWS Data Pipeline Task Runner. AWS Data Pipeline Task Runner provides\nlogic for common data management scenarios, such as performing database\nqueries and running data analysis using Amazon Elastic MapReduce (Amazon\nEMR). You can use AWS Data Pipeline Task Runner as your task runner, or\nyou can write your own task runner to provide custom data management.\nAWS Data Pipeline implements two main sets of functionality. Use the\nfirst set to create a pipeline and define data sources, schedules,\ndependencies, and the transforms to be performed on the data. Use the\nsecond set in your task runner application to receive the next task\nready for processing. The logic for performing the task, such as\nquerying the data, running data analysis, or converting the data from\none format to another, is contained within the task runner. The task\nrunner performs the task assigned to it by the web service, reporting\nprogress to the web service as it does so. When the task is done, the\ntask runner reports the final success or failure of the task to the web\nservice.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.DataPipeline\" and the <http://docs.aws.amazon.com/datapipeline/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-datapipeline-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-datapipeline)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }