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
      specVersion = "0";
      identifier = {
        name = "ObjectIO";
        version = "1.0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ka2_mail@yahoo.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "";
      description = "";
      buildType = "Custom";
    };
    components = {
      "library" = {
        libs = [
          (pkgs."user32")
          (pkgs."gdi32")
          (pkgs."kernel32")
          (pkgs."comctl32")
          (pkgs."comdlg32")
          (pkgs."shell32")
          (pkgs."winmm")
          (pkgs."winspool")
          (pkgs."ole32")
        ];
      };
    };
  }