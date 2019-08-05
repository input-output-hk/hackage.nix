{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bulmex"; version = "1.0.0"; };
      license = "MIT";
      copyright = "2018 Jappie Klooster";
      maintainer = "jappieklooster@hotmail.com";
      author = "Jappie Klooster";
      homepage = "https://github.com/jappeace/bulmex#readme";
      url = "";
      synopsis = "Reflex infused with bulma (css)";
      description = "Please see the README on GitHub at <https://github.com/githubuser/awesome-project-name#readme>";
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