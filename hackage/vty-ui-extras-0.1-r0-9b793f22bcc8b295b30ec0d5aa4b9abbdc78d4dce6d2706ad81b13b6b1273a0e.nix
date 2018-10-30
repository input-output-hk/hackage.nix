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
        name = "vty-ui-extras";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty <jtd@galois.com>";
      author = "Jonathan Daugherty <jtd@galois.com>";
      homepage = "";
      url = "";
      synopsis = "Extra vty-ui functionality not included in the core library";
      description = "Extra vty-ui functionality not included in the core library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vty)
          (hsPkgs.vty-ui)
          (hsPkgs.regex-pcre)
          (hsPkgs.regex-base)
        ];
      };
    };
  }