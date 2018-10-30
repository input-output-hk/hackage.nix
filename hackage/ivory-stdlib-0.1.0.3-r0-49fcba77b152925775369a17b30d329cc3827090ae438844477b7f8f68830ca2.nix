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
        name = "ivory-stdlib";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Galois, Inc.";
      maintainer = "leepike@galois.com";
      author = "Galois, Inc.";
      homepage = "http://smaccmpilot.org/languages/ivory-introduction.html";
      url = "";
      synopsis = "Ivory standard library.";
      description = "A standard library for Ivory.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.ivory)
          (hsPkgs.ivory-artifact)
        ];
      };
    };
  }