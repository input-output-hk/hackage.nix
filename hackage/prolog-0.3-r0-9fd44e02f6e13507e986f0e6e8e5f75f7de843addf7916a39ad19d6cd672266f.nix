{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "prolog"; version = "0.3"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Marcel Fourné (haskell@marcelfourne.de)";
      author = "Matthias Bartsch";
      homepage = "";
      url = "";
      synopsis = "A Prolog interpreter written in Haskell.";
      description = "A Prolog interpreter written in Haskell. Implements a subset of the Prolog language.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
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