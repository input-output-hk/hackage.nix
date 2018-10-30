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
        name = "pasta";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Diogo Biazus";
      maintainer = "diogo@biazus.me";
      author = "Diogo Biazus";
      homepage = "http://github.com/diogob/pasta#readme";
      url = "";
      synopsis = "PostgreSQL Abstract Syntax Tree Assember";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.semigroups)
          (hsPkgs.protolude)
        ];
      };
      tests = {
        "pasta-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pasta)
            (hsPkgs.hspec)
            (hsPkgs.microlens)
            (hsPkgs.protolude)
          ];
        };
      };
    };
  }