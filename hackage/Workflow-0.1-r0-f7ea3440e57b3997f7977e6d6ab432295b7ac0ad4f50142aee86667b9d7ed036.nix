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
      specVersion = "1.2";
      identifier = { name = "Workflow"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "library for transparent execution of computations across shutdowns and restarts";
      description = "transparent low level support (state logging, resume of the computation state, wait for data condition) for very long time\nlong living event driven processes. Workflow give the two first services to any monadic computation of type  (a-> m a)\nf x >>=\\x'-> g x' >>= \\x''->... z by\nprefixing the user with the method \"step\":\nstep f  x >>= \\x'-> step g  x' >>= \\x''->...\nThis means that a workflow can be described with the familiar \"do\" notation. In principle, there is no other limitation\non the syntax but the restriction (a -> m a): All computations consume and produce the same type of data.\nfor a monadic computation, Workflow provides:\n- transparent checkpointing for each step in permanent storage (using TCache)\n- resume of the monadic computation at the last checkpoint after soft or hard interruption\n- use of versioning techniques for storing object changes (using RefSerialize)\n- retrieval of the object at any previous step\n- suspend the computation until the input object meet certain conditions. useful for inter-workflow\ncomunications.\nFor various reasons, this package force the use of TCache for storage and refSerialize for writing to/from strings\nat the end of the workflow all the intermediate data is erased.\nsee demo.hs and the header of Control.TCache for documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."RefSerialize" or (buildDepError "RefSerialize"))
          (hsPkgs."TCache" or (buildDepError "TCache"))
          (hsPkgs."stm" or (buildDepError "stm"))
          ];
        };
      };
    }