{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "bff-mono"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kztk@is.s.u-tokyo.ac.jp";
      author = "Kazutaka Matsuda,\nMeng Wang";
      homepage = "https://bitbucket.org/kztk/bff-mono/";
      url = "";
      synopsis = "\"Bidirectionalization for Free\" for Monomorphic Transformations";
      description = "This package provides a way to make a bidirectional\ntransformation (a getter/setter pair, or so-called lens)\nfrom a description of unidirectional transformation.\nLike 'bff' package, the package constructs bidirectional\ntransformations based on the free theorem.\nUnlike 'bff' package,\nthe package supports some of monomorphic transformations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }