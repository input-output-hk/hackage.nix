{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bulmex"; version = "2.0.0"; };
      license = "MIT";
      copyright = "2018 Jappie Klooster";
      maintainer = "jappieklooster@hotmail.com";
      author = "Jappie Klooster";
      homepage = "https://github.com/jappeace/bulmex#readme";
      url = "";
      synopsis = "Reflex infused with bulma (css)";
      description = "Reflex infused with bulma, With a bunch of helper functions for making server side rendering easier. See related [blogpost](https://jappieklooster.nl/reflex-server-side-html-rendering.html).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.jsaddle)
          (hsPkgs.jsaddle-dom)
          (hsPkgs.lens)
          (hsPkgs.network-uri)
          (hsPkgs.reflex)
          (hsPkgs.reflex-dom-core)
          (hsPkgs.reflex-dom-helpers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.witherable)
          ];
        };
      };
    }