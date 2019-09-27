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
      identifier = { name = "enumerator"; version = "0.4.13.1"; };
      license = "MIT";
      copyright = "Copyright (c) John Millikin 2010";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "http://john-millikin.com/software/enumerator/";
      url = "";
      synopsis = "Reliable, high-performance processing with left-fold enumerators";
      description = "Typical buffer&#x2013;based incremental I/O is based around a single loop,\nwhich reads data from some source (such as a socket or file), transforms\nit, and generates one or more outputs (such as a line count, HTTP\nresponses, or modified file). Although efficient and safe, these loops are\nall single&#x2013;purpose; it is difficult or impossible to compose\nbuffer&#x2013;based processing loops.\n\nHaskell&#x2019;s concept of &#x201C;lazy I/O&#x201D; allows pure code to\noperate on data from an external source. However, lazy I/O has several\nshortcomings. Most notably, resources such as memory and file handles can\nbe retained for arbitrarily long periods of time, causing unpredictable\nperformance and error conditions.\n\nEnumerators are an efficient, predictable, and safe alternative to lazy\nI/O. Discovered by Oleg Kiselyov, they allow large datasets to be processed\nin near&#x2013;constant space by pure code. Although somewhat more complex\nto write, using enumerators instead of lazy I/O produces more correct\nprograms.\n\nThis library contains an enumerator implementation for Haskell, designed to\nbe both simple and efficient. Three core types are defined, along with\nnumerous helper functions:\n\n* /Iteratee/: Data sinks, analogous to left folds. Iteratees consume\na sequence of /input/ values, and generate a single /output/ value.\nMany iteratees are designed to perform side effects (such as printing to\n@stdout@), so they can also be used as monad transformers.\n\n* /Enumerator/: Data sources, which generate input sequences. Typical\nenumerators read from a file handle, socket, random number generator, or\nother external stream. To operate, enumerators are passed an iteratee, and\nprovide that iteratee with input until either the iteratee has completed its\ncomputation, or EOF.\n\n* /Enumeratee/: Data transformers, which operate as both enumerators and\niteratees. Enumeratees read from an /outer/ enumerator, and provide the\ntransformed data to an /inner/ iteratee.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [ (hsPkgs."base" or (buildDepError "base")) ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            ]);
        buildable = true;
        };
      };
    }