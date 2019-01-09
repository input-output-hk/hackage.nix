{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yaya"; version = "0.2.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "2017 Greg Pfeil";
      maintainer = "greg@technomadic.org";
      author = "Greg Pfeil";
      homepage = "https://github.com/sellout/yaya#readme";
      url = "";
      synopsis = "Total recursion schemes.";
      description = "Recursion schemes allow you to separate recursion from your\nbusiness logic – making your own operations simpler, more\nmodular, and less error-prone. This library also provides\ntools for combining your operations in ways that reduce the\nnumber of passes over your data and is designed to\nencourage total (i.e., successfully terminating) functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.comonad)
          (hsPkgs.constraints)
          (hsPkgs.containers)
          (hsPkgs.distributive)
          (hsPkgs.either)
          (hsPkgs.errors)
          (hsPkgs.free)
          (hsPkgs.kan-extensions)
          (hsPkgs.lens)
          (hsPkgs.profunctors)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "yaya-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deriving-compat)
            (hsPkgs.hedgehog)
            (hsPkgs.yaya)
            (hsPkgs.yaya-hedgehog)
            ];
          };
        };
      };
    }