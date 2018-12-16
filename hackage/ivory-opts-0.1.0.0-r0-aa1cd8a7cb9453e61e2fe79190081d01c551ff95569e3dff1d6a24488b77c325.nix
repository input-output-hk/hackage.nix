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
        name = "ivory-opts";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "leepike@galois.com";
      author = "Galois, Inc.";
      homepage = "http://smaccmpilot.org/languages/ivory-introduction.html";
      url = "";
      synopsis = "Ivory compiler optimizations.";
      description = "Ivory compiler optimizations as well as compiler insertions.  Primarily used by backends.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ivory)
          (hsPkgs.monadLib)
          (hsPkgs.filepath)
          (hsPkgs.dlist)
          (hsPkgs.fgl)
          (hsPkgs.containers)
        ];
      };
    };
  }