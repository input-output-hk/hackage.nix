{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "matchable-th"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "viercc@gmail.com";
      author = "Koji Miyazato";
      homepage = "";
      url = "";
      synopsis = "Generates Matchable instances using TemplateHaskell";
      description = "This package provides TemplateHaskell function to generate\ninstances of @Matchable@ and @Bimatchable@ type classes,\nwhich are from \"matchable\" package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.th-abstraction)
          (hsPkgs.base)
          (hsPkgs.matchable)
          (hsPkgs.template-haskell)
          (hsPkgs.th-abstraction)
          ];
        };
      tests = {
        "th-examples" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.matchable)
            (hsPkgs.matchable-th)
            ];
          };
        };
      };
    }