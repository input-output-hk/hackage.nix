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
        name = "amazonka-support";
        version = "0.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Support SDK.";
      description = "AWS Support is a one-on-one, fast-response support channel that is\nstaffed with experienced support personnel. The service helps customers\nget the most from the products and features provided by Amazon Web\nServices. There are four levels, or tiers, of AWS Support: Basic,\nDeveloper, Business, and Enterprise. The Basic tier is free of charge\nand offers support for account and billing questions and service limit\nincreases. The other tiers offer an unlimited number of technical\nsupport cases with pay-by-the-month pricing and no long-term contracts,\nproviding developers and businesses flexibility to choose the level of\nsupport that meets their needs.\n\n/See:/ <http://docs.aws.amazon.com/awssupport/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
    };
  }