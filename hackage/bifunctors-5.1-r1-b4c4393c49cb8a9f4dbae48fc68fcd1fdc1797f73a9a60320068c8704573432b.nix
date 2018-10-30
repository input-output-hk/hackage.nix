{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      semigroups = true;
      tagged = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "bifunctors";
        version = "5.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/bifunctors/";
      url = "";
      synopsis = "Bifunctors";
      description = "Bifunctors";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
        ] ++ pkgs.lib.optional (flags.tagged) (hsPkgs.tagged)) ++ pkgs.lib.optional (flags.semigroups) (hsPkgs.semigroups);
      };
      tests = {
        "bifunctors-spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
          ];
        };
      };
    };
  }