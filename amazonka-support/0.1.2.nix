{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-support";
          version = "0.1.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Support SDK.";
        description = "AWS Support is a one-on-one, fast-response support channel that is staffed\nwith experienced support personnel. The service helps customers get the most\nfrom the products and features provided by Amazon Web Services. There are\nfour levels, or tiers, of AWS Support: Basic, Developer, Business, and\nEnterprise. The Basic tier is free of charge and offers support for account\nand billing questions and service limit increases. The other tiers offer an\nunlimited number of technical support cases with pay-by-the-month pricing and\nno long-term contracts, providing developers and businesses flexibility to\nchoose the level of support that meets their needs.\n\n/See:/ <http://docs.aws.amazon.com/awssupport/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        amazonka-support = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }