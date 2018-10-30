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
        name = "textlocal";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Sibi Prabakaran";
      maintainer = "sibi@psibi.in";
      author = "Sibi Prabakaran";
      homepage = "https://github.com/just-chow/textlocal";
      url = "";
      synopsis = "Haskell wrapper for textlocal SMS gateway";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.unix-time)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-conduit)
          (hsPkgs.aeson)
        ];
      };
    };
  }