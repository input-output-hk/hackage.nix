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
      identifier = { name = "amazonka-discovery"; version = "1.4.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Application Discovery Service SDK.";
      description = "The AWS Application Discovery Service helps Systems Integrators quickly\nand reliably plan application migration projects by automatically\nidentifying applications running in on-premises data centers, their\nassociated dependencies, and their performance profile.\nPlanning data center migrations can involve thousands of workloads that\nare often deeply interdependent. Application discovery and dependency\nmapping are important early first steps in the migration process, but\ndifficult to perform at scale due to the lack of automated tools.\nThe AWS Application Discovery Service automatically collects\nconfiguration and usage data from servers to develop a list of\napplications, how they perform, and how they are interdependent. This\ninformation is securely retained in an AWS Application Discovery Service\ndatabase which you can export as a CSV file into your preferred\nvisualization tool or cloud migration solution to help reduce the\ncomplexity and time in planning your cloud migration.\nThe Application Discovery Service is currently available for preview.\nOnly customers who are engaged with\n<https://aws.amazon.com/professional-services/ AWS Professional Services>\nor a certified AWS partner can use the service. To see the list of\ncertified partners and request access to the Application Discovery\nService, complete the following\n<http://aws.amazon.com/application-discovery/preview/ preview form>.\nThis API reference provides descriptions, syntax, and usage examples for\neach of the actions and data types for the Discovery Service. The topic\nfor each action shows the API request parameters and the response.\nAlternatively, you can use one of the AWS SDKs to access an API that is\ntailored to the programming language or platform that you\\'re using. For\nmore information, see <http://aws.amazon.com/tools/#SDKs AWS SDKs>.\nThis guide is intended for use with the\n<http://docs.aws.amazon.com/application-discovery/latest/userguide/what-is-appdiscovery.html AWS Discovery Service User Guide>.\nThe following are short descriptions of each API action, organized by\nfunction.\n__Managing AWS Agents Using the Application Discovery Service__\nAn AWS agent is software that you install on on-premises servers and\nvirtual machines that are targeted for discovery and migration. Agents\nrun on Linux and Windows Server and collect server configuration and\nactivity information about your applications and infrastructure.\nSpecifically, agents collect the following information and send it to\nthe Application Discovery Service using Secure Sockets Layer (SSL)\nencryption:\n-   User information (user name, home directory)\n-   Group information (name)\n-   List of installed packages\n-   List of kernel modules\n-   All create and stop process events\n-   DNS queries\n-   NIC information\n-   TCP\\/UDP process listening ports\n-   TCPV4\\/V6 connections\n-   Operating system information\n-   System performance\n-   Process performance\nThe Application Discovery Service API includes the following actions to\nmanage AWS agents:\n-   /StartDataCollectionByAgentIds/: Instructs the specified agents to\nstart collecting data. The Application Discovery Service takes\nseveral minutes to receive and process data after you initiate data\ncollection.\n-   /StopDataCollectionByAgentIds/: Instructs the specified agents to\nstop collecting data.\n-   /DescribeAgents/: Lists AWS agents by ID or lists all agents\nassociated with your user account if you did not specify an agent\nID. The output includes agent IDs, IP addresses, media access\ncontrol (MAC) addresses, agent health, host name where the agent\nresides, and the version number of each agent.\n__Querying Configuration Items__\nA /configuration item/ is an IT asset that was discovered in your data\ncenter by an AWS agent. When you use the Application Discovery Service,\nyou can specify filters and query specific configuration items. The\nservice supports Server, Process, and Connection configuration items.\nThis means you can specify a value for the following keys and query your\nIT assets:\n__Server__\n-   server.HostName\n-   server.osName\n-   server.osVersion\n-   server.configurationId\n-   server.agentId\n__Process__\n-   process.name\n-   process.CommandLine\n-   process.configurationId\n-   server.hostName\n-   server.osName\n-   server.osVersion\n-   server.configurationId\n-   server.agentId\n__Connection__\n-   connection.sourceIp\n-   connection.sourcePort\n-   connection.destinationIp\n-   connection.destinationPort\n-   sourceProcess.configurationId\n-   sourceProcess.commandLine\n-   sourceProcess.name\n-   destinationProcessId.configurationId\n-   destinationProcess.commandLine\n-   destinationProcess.name\n-   sourceServer.configurationId\n-   sourceServer.hostName\n-   sourceServer.osName\n-   sourceServer.osVersion\n-   destinationServer.configurationId\n-   destinationServer.hostName\n-   destinationServer.osName\n-   destinationServer.osVersion\nThe Application Discovery Service includes the following actions for\nquerying configuration items.\n-   /DescribeConfigurations/: Retrieves a list of attributes for a\nspecific configuration ID. For example, the output for a /server/\nconfiguration item includes a list of attributes about the server,\nincluding host name, operating system, number of network cards, etc.\n-   /ListConfigurations/: Retrieves a list of configuration items\naccording to the criteria you specify in a filter. The filter\ncriteria identify relationship requirements. For example, you can\nspecify filter criteria of process.name with values of /nginx/ and\n/apache/.\n__Tagging Discovered Configuration Items__\nYou can tag discovered configuration items. Tags are metadata that help\nyou categorize IT assets in your data center. Tags use a /key/-/value/\nformat.\n-   /CreateTags/: Creates one or more tags for a configuration items.\n-   /DescribeTags/: Retrieves a list of configuration items that are\ntagged with a specific tag. /Or/, retrieves a list of all tags\nassigned to a specific configuration item.\n-   /DeleteTags/: Deletes the association between a configuration item\nand one or more tags.\n__Exporting Data__\nYou can export data as a CSV file to an Amazon S3 bucket or into your\npreferred visualization tool or cloud migration solution to help reduce\nthe complexity and time in planning your cloud migration.\n-   /ExportConfigurations/: Exports all discovered configuration data to\nan Amazon S3 bucket. Data includes tags and tag associations,\nprocesses, connections, servers, and system performance. This API\nreturns an export ID which you can query using the GetExportStatus\nAPI.\n-   /DescribeExportConfigurations/: Gets the status of the data export.\nWhen the export is complete, the service returns an Amazon S3 URL\nwhere you can download CSV files that include the data.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.Discovery\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
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
      tests = {
        "amazonka-discovery-test" = {
          depends = [
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."amazonka-test" or (errorHandler.buildDepError "amazonka-test"))
            (hsPkgs."amazonka-discovery" or (errorHandler.buildDepError "amazonka-discovery"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
    };
  }