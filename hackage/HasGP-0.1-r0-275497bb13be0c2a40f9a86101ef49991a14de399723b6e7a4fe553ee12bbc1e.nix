let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "HasGP"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2011 Sean Holden";
      maintainer = "sbh11@cl.cam.ac.uk";
      author = "Sean B. Holden";
      homepage = "http://www.cl.cam.ac.uk/~sbh11/HasGP";
      url = "http://www.cl.cam.ac.uk/~sbh11/HasGP/HasGP-0.1.tar.gz";
      synopsis = "A Haskell library for inference using Gaussian processes";
      description = "A Haskell library implementing algorithms for supervised learning, roughly corresponding to chapters 1 to 5 of \"Gaussian Processes for Machine Learning\" by Carl Rasmussen and Christopher Williams, The MIT Press 2006. In particular, algorithms are provides for regression and for two-class classification using either the Laplace or EP approximation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."hmatrix-special" or (buildDepError "hmatrix-special"))
          ];
        };
      };
    }