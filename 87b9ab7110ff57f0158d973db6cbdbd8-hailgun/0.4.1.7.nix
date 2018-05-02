{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      newtime = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hailgun";
          version = "0.4.1.7";
        };
        license = "MIT";
        copyright = "(c) 2014-2018 Robert Massaioli";
        maintainer = "robertmassaioli@gmail.com";
        author = "Robert Massaioli";
        homepage = "https://bitbucket.org/robertmassaioli/hailgun";
        url = "";
        synopsis = "Mailgun REST api interface for Haskell.";
        description = "Mailgun is an online service that sends emails. It is a great point of\nintegration for many SaaS services and this Haskell library cleanly interfaces\nwith Mailgun so that you can send emails from your Haskell applications.";
        buildType = "Simple";
      };
      components = {
        hailgun = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.email-validate
            hsPkgs.http-types
            hsPkgs.exceptions
            hsPkgs.tagsoup
            hsPkgs.filepath
          ] ++ (if _flags.newtime
            then [ hsPkgs.time ]
            else [
              hsPkgs.time
              hsPkgs.old-locale
            ]);
        };
      };
    }