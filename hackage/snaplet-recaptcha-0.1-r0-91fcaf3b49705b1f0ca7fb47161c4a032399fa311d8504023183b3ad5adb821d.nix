{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "snaplet-recaptcha";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "info@lars-petersen.net";
      author = "Lars Petersen";
      homepage = "";
      url = "";
      synopsis = "A ReCAPTCHA verification snaplet with connection sharing.";
      description = "This snaplet handles the interfacing with Google's ReCaptcha verification API.\nIt uses `http-conduit` which manages a connection pool. On the one hand\nthis avoid the overhead of reconnecting for every single captcha request and\non the other hand limits the use of the server's resources.";
      buildType = "Simple";
    };
    components = {
      "snaplet-recaptcha" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-lens)
          (hsPkgs.data-lens-template)
          (hsPkgs.bytestring)
          (hsPkgs.failure)
          (hsPkgs.conduit)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.snap-core)
          (hsPkgs.snap)
        ];
      };
      exes = {
        "recaptcha-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-lens)
            (hsPkgs.data-lens-template)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.failure)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.snap)
            (hsPkgs.blaze-html)
            (hsPkgs.failure)
            (hsPkgs.conduit)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
          ];
        };
      };
    };
  }