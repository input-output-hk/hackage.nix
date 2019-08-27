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
    flags = {
      dev = false;
      dump = false;
      exe = true;
      lib = true;
      prof = false;
      threaded = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "lol-calculus"; version = "1.20160822"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+lol@autogeree.net>";
      author = "Julien Moutinho <julm+lol@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "Calculus for LOL (λω language).";
      description = "WARNING: this is a research program\nwritten as I learn and explore /lambda calculii/:\nplease understand well by yourself whatever you may take from it;\nany question or contribution being welcome :-)\n\nThis package implements an /explicitely typed/\n(aka. /à la Church/) /lambda calculus/\nwith: /simples types/, /parametric polymorphism/,\n/higher-rank polymorphism/ and /constructors of types/\n(I have no need for /dependent types/ so far,\nbut it should be straightforward to add them\nto allow the full /Calculus of constructions/ (CoC)).\n\nThis is mainly done by means of:\na common /Algebraic Data Type/ (ADT) for terms and types\nto build a /Pure Type System/ (PTS),\n<https://www.schoolofhaskell.com/user/edwardk/bound generalized DeBruijn indices>\nto implement /capture-avoiding substitution/ of variables,\nand 'Typeable' axioms to embed Haskell types and terms\n(the most experimental and tricky part).\n\nThe inspiring programs I studied\nwhich explore similar problems:\nSimon Peyton Jones and Erik Meijer's\n<https://research.microsoft.com/en-us/um/people/simonpj/papers/henk.ps.gz Henk>,\nDan Doel's <http://hub.darcs.net/dolio/pts pts>,\nGabriel Gonzalez's <https://hackage.haskell.org/package/morte morte>,\nRichard Eisenberg's <https://hackage.haskell.org/package/glambda glambda>,\nEdward Kmett's <https://hackage.haskell.org/package/bound bound>.\n\nSee also: the <https://hackage.haskell.org/package/lol-typing lol-typing> package\nstudying the /type inferencing/.\n\nNOTE: if you are just interested in building\nan /Embedded Domain Specific Language/ (EDSL)\nyou may as well study Oleg Kiselyov, Jacques Carette and Chung-chieh Shan's\n<http://okmij.org/ftp/tagless-final Typed Tagless Final Interpreters>,\nwhich you may find being a much more simple, efficient and robust approach.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-format" or (buildDepError "text-format"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      exes = {
        "lol-calculus" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."lol-calculus" or (buildDepError "lol-calculus"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-format" or (buildDepError "text-format"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }