{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "through-text"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Adam Bergmark";
      maintainer = "adam@bergmark.nl";
      author = "Adam Bergmark";
      homepage = "https://www.github.com/bergmark/through-text";
      url = "";
      synopsis = "Convert textual types through Text without needing O(n^2) instances.";
      description = "Convert textual types through Text without needing O(n^2) instances.\n\nSee the README for more information: <https://github.com/bergmark/through-text/blob/master/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.text)
          ];
        };
      };
    }