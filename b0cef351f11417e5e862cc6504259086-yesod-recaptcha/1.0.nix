{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "yesod-recaptcha";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "felipe.lessa@gmail.com";
      author = "Felipe Lessa";
      homepage = "https://github.com/meteficha/yesod-recaptcha";
      url = "";
      synopsis = "Dead simple support for reCAPTCHA on Yesod applications.";
      description = "This package provides support for reCAPTCHA\n(<http://www.google.com/recaptcha>) on Yesod applications.";
      buildType = "Simple";
    };
    components = {
      "yesod-recaptcha" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.data-default)
          (hsPkgs.lifted-base)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-auth)
          (hsPkgs.yesod-form)
          (hsPkgs.wai)
          (hsPkgs.network)
          (hsPkgs.network-info)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.conduit)
        ];
      };
    };
  }