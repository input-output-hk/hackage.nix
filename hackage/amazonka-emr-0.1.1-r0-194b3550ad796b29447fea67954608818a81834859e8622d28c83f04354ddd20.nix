{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-emr"; version = "0.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Elastic MapReduce SDK.";
      description = "Amazon Elastic MapReduce (Amazon EMR) is a web service that makes it easy to\nprocess large amounts of data efficiently. Amazon EMR uses Hadoop processing\ncombined with several AWS products to do such tasks as web indexing, data\nmining, log file analysis, machine learning, scientific simulation, and data\nwarehousing.\n\n/See:/ <http://docs.aws.amazon.com/ElasticMapReduce/latest/API/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.amazonka-core) (hsPkgs.base) ]; };
      };
    }