{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "state-plus"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Boris Sukholitko, 2014";
      maintainer = "boriss@gmail.com";
      author = "Boris Sukholitko";
      homepage = "";
      url = "";
      synopsis = "MonadPlus for StateT";
      description = "Implements MonadPlus with left catch (MonadOr) for StateT.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.mtl) ]; };
      tests = {
        "Main" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.state-plus)
            (hsPkgs.checkers)
            ];
          };
        };
      };
    }