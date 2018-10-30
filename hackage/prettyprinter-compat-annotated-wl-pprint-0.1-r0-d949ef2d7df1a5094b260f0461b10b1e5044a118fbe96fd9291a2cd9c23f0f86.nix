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
        name = "prettyprinter-compat-annotated-wl-pprint";
        version = "0.1";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "David Luposchainsky <dluposchainsky at google>";
      author = "Daan Leijen, David Raymond Christiansen, David Luposchainsky";
      homepage = "http://github.com/quchen/prettyprinter";
      url = "";
      synopsis = "Prettyprinter compatibility module for previous users of the annotated-wl-pprint package.";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.prettyprinter)
        ];
      };
    };
  }