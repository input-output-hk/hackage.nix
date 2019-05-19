{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "wordsearch"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010 Byron James Johnson";
      maintainer = "KrabbyKrap@gmail.com";
      author = "Byron James Johnson";
      homepage = "";
      url = "";
      synopsis = "A word search solver library and executable";
      description = "A word search solver library and executable";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.fclabels)
          (hsPkgs.data-default)
          ];
        build-tools = [
          (hsPkgs.buildPackages.ghc or (pkgs.buildPackages.ghc))
          ];
        };
      exes = {
        "wordSearch" = {
          depends = [ (hsPkgs.base) (hsPkgs.fclabels) ];
          build-tools = [
            (hsPkgs.buildPackages.ghc or (pkgs.buildPackages.ghc))
            ];
          };
        };
      };
    }