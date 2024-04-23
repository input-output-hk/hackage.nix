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
      identifier = { name = "amazonka-ssm"; version = "1.3.6"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Simple Systems Management Service SDK.";
      description = "Simple Systems Manager (SSM) is a set of capabilities that can help you\nmanage your Amazon EC2 instances running on Windows. SSM enables you to\nrun scripts or other common administrative tasks on your instances using\neither SSM Run Command or SSM Config.\nRun Command extends the server administration capabilities of SSM by\noffering an on-demand experience for executing commands. You can use\npre-defined Amazon SSM documents (formerly called configuration\ndocuments) to perform the actions listed later in this section, or you\ncan create your own documents. With these document, you can then\nremotely configure your instances by sending commands using the AWS\ncommand line interface (CLI), AWS Tools for Windows PowerShell, or the\n__Commands__ page in the Amazon EC2 console. Additionally, because Run\nCommand enables you to execute PowerShell commands or scripts, you can\nadminister your instances remotely using PowerShell as though you were\nlogged on locally to the instance. Run Command reports the status of the\ncommand execution for each instance targeted by a command. You can also\naudit the command execution to understand who executed commands, when,\nand what changes were made. By switching between different SSM\ndocuments, you can quickly configure your instances with different types\nof commands.\nSSM Config is a lightweight instance configuration solution. With SSM\nConfig, you can specify a setup configuration for your instances. SSM\nConfig is similar to EC2 User Data, which is another way of running\none-time scripts or applying settings during instance launch. SSM Config\nis an extension of this capability. Using SSM documents, you can specify\nwhich actions the system should perform on your instances, including\nwhich applications to install, which AWS Directory Service directory to\njoin, which Microsoft PowerShell modules to install, etc. If an instance\nis missing one or more of these configurations, the system makes those\nchanges. By default, the system checks every five minutes to see if\nthere is a new configuration to apply as defined in a new SSM document.\nIf so, the system updates the instances accordingly. In this way, you\ncan remotely maintain a consistent configuration baseline on your\ninstances. SSM Config is available using the AWS CLI or the AWS Tools\nfor Windows PowerShell.\nSSM is currently not supported on Linux instances.\nYou can use Run Command and SSM Config to do the following:\n-   Join an AWS Directory Service directory (SSM Config and Run Command)\n-   Install, repair, or uninstall software using an MSI package (SSM\nConfig and Run Command)\n-   Install PowerShell modules (SSM Config and Run Command)\n-   Configure CloudWatch Logs to monitor applications and systems (SSM\nConfig and Run Command)\n-   Run PowerShell commands or scripts (Run Command only)\n-   Update the EC2Config service (Run Command only)\n-   Configure Windows Update settings (Run Command only)\nSSM documents run with administrative privilege on Windows instances\nbecause the EC2Config service runs in the Local System account. If a\nuser has permission to execute any of the pre-defined SSM documents (any\ndocument that begins with AWS-*) then that user also has administrator\naccess to the instance. Delegate access to SSM Config and Run Command\njudiciously. This becomes extremely important if you create your own SSM\ndocuments. Amazon Web Services does not provide guidance about how to\ncreate secure SSM documents. You create SSM documents and delegate\naccess to Run Command actions at your own risk. As a security best\npractice, we recommend that you assign access to \\\"AWS-*\\\" documents,\nespecially the AWS-RunPowerShellScript document, to trusted\nadministrators only. You can create low-level SSM documents for low\nsecurity tasks and delegate access to non-administrators.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.SSM\" and the <http://docs.aws.amazon.com/ssm/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
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
        "amazonka-ssm-test" = {
          depends = [
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."amazonka-test" or (errorHandler.buildDepError "amazonka-test"))
            (hsPkgs."amazonka-ssm" or (errorHandler.buildDepError "amazonka-ssm"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
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