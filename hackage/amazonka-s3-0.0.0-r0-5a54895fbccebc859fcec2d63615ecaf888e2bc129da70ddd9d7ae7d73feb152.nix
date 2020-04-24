{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-s3"; version = "0.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Simple Storage Service SDK.";
      description = "Amazon Simple Storage Service is storage for the Internet. Amazon S3\nhas a simple web services interface that you can use to store and\nretrieve any amount of data, at any time, from anywhere on the web. It\ngives any developer access to the same highly scalable, reliable, fast,\ninexpensive data storage infrastructure that Amazon uses to run its own\nglobal network of web sites. The service aims to maximize benefits of\nscale and to pass those benefits on to developers.\n\n/See:/ <http://docs.aws.amazon.com/AmazonS3/latest/API/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
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