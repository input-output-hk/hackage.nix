{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "smtp2mta";
        version = "0.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2012 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/sock2stream";
      url = "";
      synopsis = "Listen for SMTP traffic and send it to an MTA script";
      description = "This is a simple SMTP server that forwards all mail to a\nsendmail-compatible script.\n\nThe primary intended use is to allow broken MUAs that expect to always\nsend over SMTP to send with a standard MTA script.  (This allows one\nto authenticate with a mailserver using SSH keys, for example.)\n\nsmtp2mta can be run as a standalone server, or can serve connections\nfrom behind inetd.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "smtp2mta" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.network)
            (hsPkgs.process)
          ];
        };
      };
    };
  }