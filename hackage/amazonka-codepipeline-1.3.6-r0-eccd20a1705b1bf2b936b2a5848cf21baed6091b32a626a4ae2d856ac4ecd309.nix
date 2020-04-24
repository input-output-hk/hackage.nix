{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-codepipeline"; version = "1.3.6"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon CodePipeline SDK.";
      description = "AWS CodePipeline __Overview__\nThis is the AWS CodePipeline API Reference. This guide provides\ndescriptions of the actions and data types for AWS CodePipeline. Some\nfunctionality for your pipeline is only configurable through the API.\nFor additional information, see the\n<http://docs.aws.amazon.com/pipelines/latest/userguide/welcome.html AWS CodePipeline User Guide>.\nYou can use the AWS CodePipeline API to work with pipelines, stages,\nactions, gates, and transitions, as described below.\n/Pipelines/ are models of automated release processes. Each pipeline is\nuniquely named, and consists of actions, gates, and stages.\nYou can work with pipelines by calling:\n-   CreatePipeline, which creates a uniquely-named pipeline.\n-   DeletePipeline, which deletes the specified pipeline.\n-   GetPipeline, which returns information about a pipeline structure.\n-   GetPipelineState, which returns information about the current state\nof the stages and actions of a pipeline.\n-   ListPipelines, which gets a summary of all of the pipelines\nassociated with your account.\n-   StartPipelineExecution, which runs the the most recent revision of\nan artifact through the pipeline.\n-   UpdatePipeline, which updates a pipeline with edits or changes to\nthe structure of the pipeline.\nPipelines include /stages/, which are which are logical groupings of\ngates and actions. Each stage contains one or more actions that must\ncomplete before the next stage begins. A stage will result in success or\nfailure. If a stage fails, then the pipeline stops at that stage and\nwill remain stopped until either a new version of an artifact appears in\nthe source location, or a user takes action to re-run the most recent\nartifact through the pipeline. You can call GetPipelineState, which\ndisplays the status of a pipeline, including the status of stages in the\npipeline, or GetPipeline, which returns the entire structure of the\npipeline, including the stages of that pipeline. For more information\nabout the structure of stages and actions, also refer to the AWS\nCodePipeline Pipeline Structure Reference.\nPipeline stages include /actions/, which are categorized into categories\nsuch as source or build actions performed within a stage of a pipeline.\nFor example, you can use a source action to import artifacts into a\npipeline from a source such as Amazon S3. Like stages, you do not work\nwith actions directly in most cases, but you do define and interact with\nactions when working with pipeline operations such as CreatePipeline and\nGetPipelineState.\nPipelines also include /transitions/, which allow the transition of\nartifacts from one stage to the next in a pipeline after the actions in\none stage complete.\nYou can work with transitions by calling:\n-   DisableStageTransition, which prevents artifacts from transitioning\nto the next stage in a pipeline.\n-   EnableStageTransition, which enables transition of artifacts between\nstages in a pipeline.\n__Using the API to integrate with AWS CodePipeline__\nFor third-party integrators or developers who want to create their own\nintegrations with AWS CodePipeline, the expected sequence varies from\nthe standard API user. In order to integrate with AWS CodePipeline,\ndevelopers will need to work with the following items:\n-   Jobs, which are instances of an action. For example, a job for a\nsource action might import a revision of an artifact from a source.\nYou can work with jobs by calling:\n-   AcknowledgeJob, which confirms whether a job worker has received\nthe specified job,\n-   GetJobDetails, which returns the details of a job,\n-   PollForJobs, which determines whether there are any jobs to act\nupon,\n-   PutJobFailureResult, which provides details of a job failure,\nand\n-   PutJobSuccessResult, which provides details of a job success.\n-   Third party jobs, which are instances of an action created by a\npartner action and integrated into AWS CodePipeline. Partner actions\nare created by members of the AWS Partner Network.\nYou can work with third party jobs by calling:\n-   AcknowledgeThirdPartyJob, which confirms whether a job worker\nhas received the specified job,\n-   GetThirdPartyJobDetails, which requests the details of a job for\na partner action,\n-   PollForThirdPartyJobs, which determines whether there are any\njobs to act upon,\n-   PutThirdPartyJobFailureResult, which provides details of a job\nfailure, and\n-   PutThirdPartyJobSuccessResult, which provides details of a job\nsuccess.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.CodePipeline\" and the <http://docs.aws.amazon.com/codepipeline/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka-core" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-core"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "amazonka-codepipeline-test" = {
          depends = [
            (hsPkgs."amazonka-core" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-core"))
            (hsPkgs."amazonka-test" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-test"))
            (hsPkgs."amazonka-codepipeline" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-codepipeline"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }