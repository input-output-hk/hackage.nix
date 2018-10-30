{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "recaptcha";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 John MacFarlane";
      maintainer = "John MacFarlane <jgm@berkeley.edu>";
      author = "John MacFarlane <jgm@berkeley.edu>";
      homepage = "http://github.com/jgm/recaptcha/tree/master";
      url = "";
      synopsis = "Functions for using the reCAPTCHA service in web applications.";
      description = "reCAPTCHA (https://www.google.com/recaptcha/intro/) is a\nservice that provides captchas for preventing automated\nspam in web applications.\nrecaptcha-hs provides functions for using reCAPTCHA in Haskell\nweb applications.";
      buildType = "Simple";
    };
    components = {
      "library" = {
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