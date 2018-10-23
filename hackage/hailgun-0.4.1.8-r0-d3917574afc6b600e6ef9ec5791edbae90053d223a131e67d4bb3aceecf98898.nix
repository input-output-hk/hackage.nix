{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { newtime = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hailgun";
        version = "0.4.1.8";
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
      "hailgun" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.email-validate)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.tagsoup)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ] ++ (if flags.newtime
          then [ (hsPkgs.time) ]
          else [
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ]);
      };
    };
  }