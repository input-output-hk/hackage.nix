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
        name = "yesod-recaptcha2";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "© ncaq";
      maintainer = "ncaq@ncaq.net";
      author = "ncaq";
      homepage = "https://github.com/ncaq/yesod-recaptcha2#readme";
      url = "";
      synopsis = "yesod recaptcha2";
      description = "recaptcha2 for yesod-form";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.classy-prelude-yesod)
          (hsPkgs.http-conduit)
          (hsPkgs.yesod-auth)
          (hsPkgs.text)
        ];
      };
    };
  }