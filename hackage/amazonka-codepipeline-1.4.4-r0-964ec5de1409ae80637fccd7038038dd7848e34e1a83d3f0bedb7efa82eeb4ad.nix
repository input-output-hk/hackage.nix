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
      identifier = { name = "amazonka-codepipeline"; version = "1.4.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon CodePipeline SDK.";
      description = "AWS CodePipeline\n__Overview__\nThis is the AWS CodePipeline API Reference. This guide provides descriptions of the actions and data types for AWS CodePipeline. Some functionality for your pipeline is only configurable through the API. For additional information, see the <http://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html AWS CodePipeline User Guide>.\nYou can use the AWS CodePipeline API to work with pipelines, stages, actions, gates, and transitions, as described below.\n/Pipelines/ are models of automated release processes. Each pipeline is uniquely named, and consists of actions, gates, and stages.\nYou can work with pipelines by calling:\n-   < CreatePipeline>, which creates a uniquely-named pipeline.\n-   < DeletePipeline>, which deletes the specified pipeline.\n-   < GetPipeline>, which returns information about a pipeline structure.\n-   < GetPipelineExecution>, which returns information about a specific execution of a pipeline.\n-   < GetPipelineState>, which returns information about the current state of the stages and actions of a pipeline.\n-   < ListPipelines>, which gets a summary of all of the pipelines associated with your account.\n-   < StartPipelineExecution>, which runs the the most recent revision of an artifact through the pipeline.\n-   < UpdatePipeline>, which updates a pipeline with edits or changes to the structure of the pipeline.\nPipelines include /stages/, which are which are logical groupings of gates and actions. Each stage contains one or more actions that must complete before the next stage begins. A stage will result in success or failure. If a stage fails, then the pipeline stops at that stage and will remain stopped until either a new version of an artifact appears in the source location, or a user takes action to re-run the most recent artifact through the pipeline. You can call < GetPipelineState>, which displays the status of a pipeline, including the status of stages in the pipeline, or < GetPipeline>, which returns the entire structure of the pipeline, including the stages of that pipeline. For more information about the structure of stages and actions, also refer to the <http://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-structure.html AWS CodePipeline Pipeline Structure Reference>.\nPipeline stages include /actions/, which are categorized into categories such as source or build actions performed within a stage of a pipeline. For example, you can use a source action to import artifacts into a pipeline from a source such as Amazon S3. Like stages, you do not work with actions directly in most cases, but you do define and interact with actions when working with pipeline operations such as < CreatePipeline> and < GetPipelineState>.\nPipelines also include /transitions/, which allow the transition of artifacts from one stage to the next in a pipeline after the actions in one stage complete.\nYou can work with transitions by calling:\n-   < DisableStageTransition>, which prevents artifacts from transitioning to the next stage in a pipeline.\n-   < EnableStageTransition>, which enables transition of artifacts between stages in a pipeline.\n__Using the API to integrate with AWS CodePipeline__\nFor third-party integrators or developers who want to create their own integrations with AWS CodePipeline, the expected sequence varies from the standard API user. In order to integrate with AWS CodePipeline, developers will need to work with the following items:\n__Jobs__, which are instances of an action. For example, a job for a source action might import a revision of an artifact from a source.\nYou can work with jobs by calling:\n-   < AcknowledgeJob>, which confirms whether a job worker has received the specified job,\n-   < GetJobDetails>, which returns the details of a job,\n-   < PollForJobs>, which determines whether there are any jobs to act upon,\n-   < PutJobFailureResult>, which provides details of a job failure, and\n-   < PutJobSuccessResult>, which provides details of a job success.\n__Third party jobs__, which are instances of an action created by a partner action and integrated into AWS CodePipeline. Partner actions are created by members of the AWS Partner Network.\nYou can work with third party jobs by calling:\n-   < AcknowledgeThirdPartyJob>, which confirms whether a job worker has received the specified job,\n-   < GetThirdPartyJobDetails>, which requests the details of a job for a partner action,\n-   < PollForThirdPartyJobs>, which determines whether there are any jobs to act upon,\n-   < PutThirdPartyJobFailureResult>, which provides details of a job failure, and\n-   < PutThirdPartyJobSuccessResult>, which provides details of a job success.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.CodePipeline\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka-core" or (buildDepError "amazonka-core"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "amazonka-codepipeline-test" = {
          depends = [
            (hsPkgs."amazonka-core" or (buildDepError "amazonka-core"))
            (hsPkgs."amazonka-test" or (buildDepError "amazonka-test"))
            (hsPkgs."amazonka-codepipeline" or (buildDepError "amazonka-codepipeline"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }