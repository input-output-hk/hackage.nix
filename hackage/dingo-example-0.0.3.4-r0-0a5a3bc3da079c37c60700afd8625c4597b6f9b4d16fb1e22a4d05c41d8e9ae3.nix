{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0.1";
      identifier = {
        name = "dingo-example";
        version = "0.0.3.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "Dingo Example";
      description = "Example application for the Dingo Rich Internet Application platform.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "dingo-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.blaze-html)
            (hsPkgs.dingo-core)
            (hsPkgs.dingo-widgets)
            (hsPkgs.fclabels)
            (hsPkgs.shakespeare-js)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }