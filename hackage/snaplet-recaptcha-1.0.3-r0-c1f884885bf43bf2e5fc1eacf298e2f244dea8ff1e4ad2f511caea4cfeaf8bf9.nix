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
        version = "1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mike Ledger <eleventynine@gmail.com>";
      author = "Mike Ledger, Lars Petersen";
      homepage = "http://github.com/mikeplus64/snaplet-recaptcha";
      url = "";
      synopsis = "A ReCAPTCHA verification snaplet with Heist integration and connection sharing.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "snaplet-recaptcha" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.heist)
          (hsPkgs.snap)
          (hsPkgs.blaze-builder)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.configurator)
          (hsPkgs.text)
          (hsPkgs.http-conduit)
        ];
      };
    };
  }