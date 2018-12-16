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
      specVersion = "1.10";
      identifier = {
        name = "hans-pfq";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "©2015 Marcin Tolysz";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/hans-pfq";
      url = "";
      synopsis = "Driver for real ethernet devices for HaNS";
      description = "Network ethernet device for HaNS(Currently requires hans-2.4 from the github), which can tap into a real ethernet interface, all using pfq library and preform raw packet reads & writes.\nThis is a very simple. But requires: root - to be able to use PFQ, not really tested...";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hans)
          (hsPkgs.pfq)
          (hsPkgs.bytestring)
        ];
      };
    };
  }