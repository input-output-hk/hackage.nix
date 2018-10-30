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
        name = "amazonka-ssm";
        version = "1.4.4";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Simple Systems Management Service SDK.";
      description = "Amazon EC2 Simple Systems Manager (SSM) enables you to remotely manage the configuration of your Amazon EC2 instances, virtual machines (VMs), or servers in your on-premises environment or in an environment provided by other cloud providers using scripts, commands, or the Amazon EC2 console. SSM includes an on-demand solution called /Amazon EC2 Run Command/ and a lightweight instance configuration solution called /SSM Config/.\nThis references is intended to be used with the EC2 Run Command User Guide for <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/execute-remote-commands.html Linux> or <http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/execute-remote-commands.html Windows>.\nYou must register your on-premises servers and VMs through an activation process before you can configure them using Run Command. Registered servers and VMs are called /managed instances/. For more information, see <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/managed-instances.html Setting Up Run Command On Managed Instances (On-Premises Servers and VMs) on Linux> or <http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/managed-instances.html Setting Up Run Command On Managed Instances (On-Premises Servers and VMs) on Windows>.\n__Run Command__\nRun Command provides an on-demand experience for executing commands. You can use pre-defined SSM documents to perform the actions listed later in this section, or you can create your own documents. With these documents, you can remotely configure your instances by sending commands using the __Commands__ page in the <http://console.aws.amazon.com/ec2/ Amazon EC2 console>, <http://docs.aws.amazon.com/powershell/latest/reference/items/Amazon_Simple_Systems_Management_cmdlets.html AWS Tools for Windows PowerShell>, the <http://docs.aws.amazon.com/cli/latest/reference/ssm/index.html AWS CLI>, or AWS SDKs.\nRun Command reports the status of the command execution for each instance targeted by a command. You can also audit the command execution to understand who executed commands, when, and what changes were made. By switching between different SSM documents, you can quickly configure your instances with different types of commands. To get started with Run Command, verify that your environment meets the prerequisites for remotely running commands on EC2 instances (<http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/remote-commands-prereq.html Linux> or <http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/remote-commands-prereq.html Windows>).\n__SSM Config__\nSSM Config is a lightweight instance configuration solution. SSM Config is currently only available for Windows instances. With SSM Config, you can specify a setup configuration for your instances. SSM Config is similar to EC2 User Data, which is another way of running one-time scripts or applying settings during instance launch. SSM Config is an extension of this capability. Using SSM documents, you can specify which actions the system should perform on your instances, including which applications to install, which AWS Directory Service directory to join, which Microsoft PowerShell modules to install, etc. If an instance is missing one or more of these configurations, the system makes those changes. By default, the system checks every five minutes to see if there is a new configuration to apply as defined in a new SSM document. If so, the system updates the instances accordingly. In this way, you can remotely maintain a consistent configuration baseline on your instances. SSM Config is available using the AWS CLI or the AWS Tools for Windows PowerShell. For more information, see <http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-configuration-manage.html Managing Windows Instance Configuration>.\nSSM Config and Run Command include the following pre-defined documents.\n__Linux__\n-   __AWS-RunShellScript__ to run shell scripts\n-   __AWS-UpdateSSMAgent__ to update the Amazon SSM agent\n__Windows__\n-   __AWS-JoinDirectoryServiceDomain__ to join an AWS Directory\n-   __AWS-RunPowerShellScript__ to run PowerShell commands or scripts\n-   __AWS-UpdateEC2Config__ to update the EC2Config service\n-   __AWS-ConfigureWindowsUpdate__ to configure Windows Update settings\n-   __AWS-InstallApplication__ to install, repair, or uninstall software using an MSI package\n-   __AWS-InstallPowerShellModule__ to install PowerShell modules\n-   __AWS-ConfigureCloudWatch__ to configure Amazon CloudWatch Logs to monitor applications and systems\n-   __AWS-ListWindowsInventory__ to collect information about an EC2 instance running in Windows.\n-   __AWS-FindWindowsUpdates__ to scan an instance and determines which updates are missing.\n-   __AWS-InstallMissingWindowsUpdates__ to install missing updates on your EC2 instance.\n-   __AWS-InstallSpecificWindowsUpdates__ to install one or more specific updates.\nThe commands or scripts specified in SSM documents run with administrative privilege on your instances because the Amazon SSM agent runs as root on Linux and the EC2Config service runs in the Local System account on Windows. If a user has permission to execute any of the pre-defined SSM documents (any document that begins with AWS-*) then that user also has administrator access to the instance. Delegate access to Run Command and SSM Config judiciously. This becomes extremely important if you create your own SSM documents. Amazon Web Services does not provide guidance about how to create secure SSM documents. You create SSM documents and delegate access to Run Command at your own risk. As a security best practice, we recommend that you assign access to \\\"AWS-*\\\" documents, especially the AWS-RunShellScript document on Linux and the AWS-RunPowerShellScript document on Windows, to trusted administrators only. You can create SSM documents for specific tasks and delegate access to non-administrators.\nFor information about creating and sharing SSM documents, see the following topics in the SSM User Guide:\n-   <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-ssm-doc.html Creating SSM Documents> and <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ssm-sharing.html Sharing SSM Documents> (Linux)\n-   <http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/create-ssm-doc.html Creating SSM Documents> and <http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ssm-sharing.html Sharing SSM Documents> (Windows)\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.SSM\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
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
        "amazonka-ssm-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-ssm)
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