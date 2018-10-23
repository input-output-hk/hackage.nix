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
        version = "1.4.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon GameLift SDK.";
      description = "Amazon GameLift Service\nWelcome to the /Amazon GameLift API Reference/. Amazon GameLift is a\nmanaged Amazon Web Services (AWS) service for developers who need a\nscalable, server-based solution for multiplayer games. Amazon GameLift\nprovides setup and deployment of game servers, and handles\ninfrastructure scaling and session management. For more information\nabout the GameLift service, including a feature overview, getting\nstarted guide, and tutorial, see the accompanying\n<http://docs.aws.amazon.com/gamelift/latest/developerguide/ Amazon GameLift Developer Guide>.\nThis reference describes the low-level service API for GameLift. You can\ncall this API directly or use the\n<https://aws.amazon.com/tools/ AWS SDK> for your preferred language. The\nAWS SDK includes a set of high-level GameLift actions multiplayer game\nsessions. Alternatively, you can use the\n<https://aws.amazon.com/cli/ AWS command-line interface> (CLI) tool,\nwhich includes commands for GameLift. For administrative actions, you\ncan use the Amazon GameLift console.\n__Managing Game and Player Sessions Through GameLift__\nCall these actions from your game clients and\\/or services to create and\nmanage multiplayer game sessions.\n-   __Game sessions__\n-   < CreateGameSession>\n-   < DescribeGameSessions>\n-   < DescribeGameSessionDetails>\n-   < UpdateGameSession>\n-   __Player sessions__\n-   < CreatePlayerSession>\n-   < CreatePlayerSessions>\n-   < DescribePlayerSessions>\n-   __Other actions:__\n-   < GetGameSessionLogUrl>\n__Setting Up Game Servers__\nUse these administrative actions to configure GameLift to host your game\nservers. When configuring GameLift, you\\'ll need to (1) configure a\nbuild for your game and provide build files, and (2) set up one or more\nfleets to host game sessions.\n-   __Build actions:__\n-   < ListBuilds>\n-   < CreateBuild>\n-   < DescribeBuild>\n-   < UpdateBuild>\n-   < DeleteBuild>\n-   < RequestUploadCredentials>\n-   __Fleet actions:__\n-   < ListFleets>\n-   < CreateFleet>\n-   Describe fleet actions:\n-   < DescribeFleetAttributes>\n-   < DescribeFleetCapacity>\n-   < DescribeFleetPortSettings>\n-   < DescribeFleetUtilization>\n-   < DescribeEC2InstanceLimits>\n-   < DescribeFleetEvents>\n-   Update fleet actions:\n-   < UpdateFleetAttributes>\n-   < UpdateFleetCapacity>\n-   < UpdateFleetPortSettings>\n-   < DeleteFleet>\n-   __Alias actions:__\n-   < ListAliases>\n-   < CreateAlias>\n-   < DescribeAlias>\n-   < UpdateAlias>\n-   < DeleteAlias>\n-   < ResolveAlias>\n-   __Scaling policy actions:__\n-   < PutScalingPolicy>\n-   < DescribeScalingPolicies>\n-   < DeleteScalingPolicy>\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.GameLift\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
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