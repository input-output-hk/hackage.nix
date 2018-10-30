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
        name = "amazonka-glacier";
        version = "0.3.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Glacier SDK.";
      description = "Amazon Glacier is a secure, durable, and extremely low-cost storage service\nfor data archiving and online backup. Customers can reliably store large or\nsmall amounts of data for as little as \$0.01 per gigabyte per month, a\nsignificant savings compared to on-premises solutions. To keep costs low,\nAmazon Glacier is optimized for infrequently accessed data where a retrieval\ntime of several hours is suitable.\n\n/See:/ <http://docs.aws.amazon.com/amazonglacier/latest/dev/introduction.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
    };
  }