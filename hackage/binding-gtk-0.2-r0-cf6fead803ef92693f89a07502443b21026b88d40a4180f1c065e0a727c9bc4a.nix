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
        name = "binding-gtk";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@accursoft.org";
      author = "Gideon Sireling";
      homepage = "http://code.accursoft.com/binding";
      url = "";
      synopsis = "Data Binding in Gtk2Hs";
      description = "Bind mutable data and lists to Gtk2Hs widgets.\nExamples are provided by the included demo programs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.gtk)
          (hsPkgs.binding-core)
          (hsPkgs.mtl)
        ];
      };
    };
  }