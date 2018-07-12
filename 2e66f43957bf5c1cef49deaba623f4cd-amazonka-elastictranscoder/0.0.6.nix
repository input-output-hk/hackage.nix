{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-elastictranscoder";
          version = "0.0.6";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Elastic Transcoder SDK.";
        description = "Amazon Elastic Transcoder lets you convert media files that you have stored\nin Amazon Simple Storage Service (Amazon S3) into media files in the formats\nrequired by consumer playback devices. For example, you can convert large,\nhigh-quality digital media files into formats that users can play back on\nmobile devices, tablets, web browsers, and connected televisions.\n\n/See:/ <http://docs.aws.amazon.com/elastictranscoder/latest/developerguide/api-reference.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        "amazonka-elastictranscoder" = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }