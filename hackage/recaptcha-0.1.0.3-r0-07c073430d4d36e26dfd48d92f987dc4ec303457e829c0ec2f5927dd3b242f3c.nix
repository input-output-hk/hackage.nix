{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "recaptcha";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 John MacFarlane";
      maintainer = "John MacFarlane <jgm@berkeley.edu>";
      author = "John MacFarlane <jgm@berkeley.edu>";
      homepage = "http://github.com/jgm/recaptcha/tree/master";
      url = "";
      synopsis = "Functions for using the reCAPTCHA service in web applications.";
      description = "reCAPTCHA (http://recaptcha.net/) is a service that provides\ncaptchas for preventing automated spam in web applications.\nrecaptcha-hs provides functions for using reCAPTCHA in Haskell\nweb applications.";
      buildType = "Custom";
    };
    components = {
      "recaptcha" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.xhtml)
        ] ++ (if flags.network-uri
          then [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]
          else [ (hsPkgs.network) ]);
      };
    };
  }