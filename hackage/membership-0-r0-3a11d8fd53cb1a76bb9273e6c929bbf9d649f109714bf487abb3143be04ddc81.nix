{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "membership"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/membership";
      url = "";
      synopsis = "Indices for type level lists";
      description = "See README";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.constraints)
          (hsPkgs.hashable)
          (hsPkgs.template-haskell)
          (hsPkgs.th-lift)
          (hsPkgs.prettyprinter)
          ];
        };
      };
    }