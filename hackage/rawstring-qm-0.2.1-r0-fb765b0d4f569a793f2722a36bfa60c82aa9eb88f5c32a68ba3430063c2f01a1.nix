{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rawstring-qm"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "©2014-15 Marcin Tolysz";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/rawstring-qm";
      url = "";
      synopsis = "Simple raw string quotation and dictionary interpolation";
      description = "Supply a couple of usefull QuasiQuotes so we can use functions to lookup values\nThis is an initial, and unstable package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          ];
        };
      };
    }