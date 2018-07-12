{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-importexport";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Import/Export SDK.";
        description = "AWS Import/Export accelerates moving large amounts of data into and out\nof AWS using portable storage devices for transport. AWS transfers your\ndata directly onto and off of storage devices using Amazon’s high-speed\ninternal network and bypassing the Internet. For significant data sets,\nAWS Import/Export is often faster than Internet transfer and more cost\neffective than upgrading your connectivity.\n\n/See:/ <http://docs.aws.amazon.com/AWSImportExport/latest/DG/api-reference.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        "amazonka-importexport" = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }