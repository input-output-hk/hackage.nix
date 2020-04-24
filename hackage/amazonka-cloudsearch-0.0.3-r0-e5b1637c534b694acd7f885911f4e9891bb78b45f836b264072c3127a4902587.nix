{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-cloudsearch"; version = "0.0.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon CloudSearch SDK.";
      description = "Amazon CloudSearch is a fully-managed service in the AWS Cloud that makes it\nsimple and cost-effective to set up, manage, and scale a search solution for\nyour website or application. Amazon CloudSearch supports 34 languages and\npopular search features such as highlighting, autocomplete, and geospatial\nsearch.\n\n/See:/ <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/what-is-cloudsearch.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
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
      };
    }