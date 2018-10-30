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
      specVersion = "1.6";
      identifier = {
        name = "snaplet-stripe";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "luke@hoersten.org";
      author = "Luke Hoersten";
      homepage = "https://github.com/LukeHoersten/snaplet-stripe";
      url = "";
      synopsis = "Stripe snaplet for the Snap Framework";
      description = "This snaplet contains support for using the Stripe\npayment platform with a Snap Framework application.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.snap)
          (hsPkgs.heist)
          (hsPkgs.text)
          (hsPkgs.text-format)
          (hsPkgs.configurator)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.xmlhtml)
          (hsPkgs.stripe)
        ];
      };
    };
  }