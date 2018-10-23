{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "amazonka-gamelift";
        version = "1.4.4";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon GameLift SDK.";
      description = "Amazon GameLift Service\nWelcome to the /Amazon GameLift API Reference/. Amazon GameLift is a managed Amazon Web Services (AWS) service for developers who need a scalable, server-based solution for multiplayer games. Amazon GameLift provides setup and deployment of game servers, and handles infrastructure scaling and session management.\nThis reference describes the low-level service API for GameLift. You can call this API directly or use the <https://aws.amazon.com/tools/#sdk AWS SDK> for your preferred language. The AWS SDK includes a set of high-level GameLift actions multiplayer game sessions. Alternatively, you can use the <https://aws.amazon.com/cli/ AWS command-line interface> (CLI) tool, which includes commands for GameLift. For administrative actions, you can also use the Amazon GameLift console.\n__More Resources__\n-   <http://docs.aws.amazon.com/gamelift/latest/developerguide/ Amazon GameLift Developer Guide>: Learn more about GameLift features and how to use them\n-   <https://gamedev.amazon.com/forums/tutorials Lumberyard and GameLift Tutorials>: Get started fast with walkthroughs and sample projects\n-   <https://aws.amazon.com/blogs/gamedev/ GameDev Blog>: Stay up to date with new features and techniques\n-   <https://gamedev.amazon.com/forums/spaces/123/gamelift-discussion.html GameDev Forums>: Connect with the GameDev community\n__Manage Games and Players Through GameLift__\nCall these actions from your game clients and\\/or services to create and manage multiplayer game sessions and player sessions.\n-   __Game sessions__\n-   < CreateGameSession>\n-   < DescribeGameSessions>\n-   < DescribeGameSessionDetails>\n-   < UpdateGameSession>\n-   < SearchGameSessions>\n-   __Player sessions__\n-   < CreatePlayerSession>\n-   < CreatePlayerSessions>\n-   < DescribePlayerSessions>\n-   __Other actions:__\n-   < GetGameSessionLogUrl>\n__Set Up and Manage Game Servers__\nUse these administrative actions to configure GameLift to host your game servers. When setting up GameLift, you\\'ll need to (1) configure a build for your game and upload build files, and (2) set up one or more fleets to host game sessions. Once you\\'ve created and activated a fleet, you can assign aliases to it, scale capacity, track performance and utilization, etc.\n-   __Manage your builds:__\n-   < ListBuilds>\n-   < CreateBuild>\n-   < DescribeBuild>\n-   < UpdateBuild>\n-   < DeleteBuild>\n-   < RequestUploadCredentials>\n-   __Manage your fleets:__\n-   < ListFleets>\n-   < CreateFleet>\n-   Describe fleets:\n-   < DescribeFleetAttributes>\n-   < DescribeFleetCapacity>\n-   < DescribeFleetPortSettings>\n-   < DescribeFleetUtilization>\n-   < DescribeEC2InstanceLimits>\n-   < DescribeFleetEvents>\n-   < DescribeRuntimeConfiguration>\n-   Update fleets:\n-   < UpdateFleetAttributes>\n-   < UpdateFleetCapacity>\n-   < UpdateFleetPortSettings>\n-   < UpdateRuntimeConfiguration>\n-   < DeleteFleet>\n-   __Manage fleet aliases:__\n-   < ListAliases>\n-   < CreateAlias>\n-   < DescribeAlias>\n-   < UpdateAlias>\n-   < DeleteAlias>\n-   < ResolveAlias>\n-   __Manage autoscaling:__\n-   < PutScalingPolicy>\n-   < DescribeScalingPolicies>\n-   < DeleteScalingPolicy>\nTo view changes to the API, see the GameLift <http://docs.aws.amazon.com/gamelift/latest/developerguide/doc-history.html Document History> page.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.GameLift\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "amazonka-gamelift" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-gamelift-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-gamelift)
            (hsPkgs.base)
            (hsPkgs.bytestring)
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