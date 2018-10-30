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
        name = "ses-html-snaplet";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "David Johnson";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "";
      url = "";
      synopsis = "Snaplet for the ses-html package";
      description = "Send HTML formatted emails using Amazon's SES REST API with blaze";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.configurator)
          (hsPkgs.ses-html)
          (hsPkgs.snap)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
    };
  }