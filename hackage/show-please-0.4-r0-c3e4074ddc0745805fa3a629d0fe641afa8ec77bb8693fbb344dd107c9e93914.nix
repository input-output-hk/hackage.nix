{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9";
      identifier = { name = "show-please"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox <dsf@seereason.com>";
      homepage = "https://github.com/ddssff/show-please";
      url = "";
      synopsis = "A wrapper type V with improved Show instances";
      description = "Provides Show instances for various types whose official\nShow won't Read. This is particularly intended for exception types,\nwhich can appear unexpectedly and be difficult to track down.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
          ];
        };
      };
    }