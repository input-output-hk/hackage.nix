{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "HExcel"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sasa.bogicevic@pm.me";
      author = "Sasha Bogicevic";
      homepage = "";
      url = "";
      synopsis = "Create Excel files with Haskell";
      description = "Easily create Excel files with Haskell. See README at <https://github.com/green-lambda/HExcel>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.time)
          (hsPkgs.transformers)
          ];
        libs = [ (pkgs."z") (pkgs."xlsxwriter") ];
        };
      };
    }