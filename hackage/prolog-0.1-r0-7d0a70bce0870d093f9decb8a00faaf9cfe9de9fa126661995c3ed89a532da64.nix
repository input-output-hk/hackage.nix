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
        name = "prolog";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "bartsch@cs.uni-bonn.de";
      author = "Matthias Bartsch";
      homepage = "https://github.com/Erdwolf/prolog";
      url = "";
      synopsis = "A Prolog interpreter written in Haskell.";
      description = "A Prolog interpreter written in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.syb)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.th-lift)
          (hsPkgs.transformers)
        ];
      };
    };
  }