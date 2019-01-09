{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "async-ajax"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2016 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/ghcjs-ajax#readme";
      url = "";
      synopsis = "Crossbrowser async AJAX Bindings for GHCJS";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.ghcjs-ajax)
          (hsPkgs.text)
          ];
        };
      };
    }