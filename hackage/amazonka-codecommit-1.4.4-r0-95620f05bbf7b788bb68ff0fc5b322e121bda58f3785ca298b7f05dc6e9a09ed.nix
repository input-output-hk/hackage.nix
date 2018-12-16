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
        name = "amazonka-codecommit";
        version = "1.4.4";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon CodeCommit SDK.";
      description = "AWS CodeCommit\nThis is the /AWS CodeCommit API Reference/. This reference provides descriptions of the operations and data types for AWS CodeCommit API.\nYou can use the AWS CodeCommit API to work with the following objects:\n-   Repositories, by calling the following:\n-   < BatchGetRepositories>, which returns information about one or more repositories associated with your AWS account\n-   < CreateRepository>, which creates an AWS CodeCommit repository\n-   < DeleteRepository>, which deletes an AWS CodeCommit repository\n-   < GetRepository>, which returns information about a specified repository\n-   < ListRepositories>, which lists all AWS CodeCommit repositories associated with your AWS account\n-   < UpdateRepositoryDescription>, which sets or updates the description of the repository\n-   < UpdateRepositoryName>, which changes the name of the repository. If you change the name of a repository, no other users of that repository will be able to access it until you send them the new HTTPS or SSH URL to use.\n-   Branches, by calling the following:\n-   < CreateBranch>, which creates a new branch in a specified repository\n-   < GetBranch>, which returns information about a specified branch\n-   < ListBranches>, which lists all branches for a specified repository\n-   < UpdateDefaultBranch>, which changes the default branch for a repository\n-   Information about committed code in a repository, by calling the following:\n-   < GetCommit>, which returns information about a commit, including commit messages and committer information.\n-   Triggers, by calling the following:\n-   < GetRepositoryTriggers>, which returns information about triggers configured for a repository\n-   < PutRepositoryTriggers>, which replaces all triggers for a repository and can be used to create or delete triggers\n-   < TestRepositoryTriggers>, which tests the functionality of a repository trigger by sending data to the trigger target\nFor information about how to use AWS CodeCommit, see the <http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit User Guide>.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.CodeCommit\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-codecommit-test" = {
          depends = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-codecommit)
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