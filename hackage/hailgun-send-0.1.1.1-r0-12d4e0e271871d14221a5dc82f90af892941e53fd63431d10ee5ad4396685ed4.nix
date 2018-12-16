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
        name = "hailgun-send";
        version = "0.1.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "robertmassaioli@gmail.com";
      author = "Robert Massaioli";
      homepage = "";
      url = "";
      synopsis = "A program to send emails throught the Mailgun api.";
      description = "Use this executable to send emails using the Mailgun api's from the command line. You require a configuraiton file\nwith your Mailgun API details to make it work. Please run hailgun-send \\-\\-help for more information.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hailgun-send" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hailgun)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.configurator)
          ];
        };
      };
    };
  }