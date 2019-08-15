{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "shake-minify-css"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Shake rules for CSS";
      description = "Sensibly use [shake](https://shakebuild.com/) to minify CSS.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.shake)
          (hsPkgs.hasmin)
          (hsPkgs.text)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          ];
        };
      };
    }