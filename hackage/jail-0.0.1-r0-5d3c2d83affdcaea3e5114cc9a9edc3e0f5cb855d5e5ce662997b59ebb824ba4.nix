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
      identifier = { name = "jail"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sfvisser@cs.uu.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Jailed IO monad.";
      description = "Like all of us know, the IO monad from the System.IO module\nis a wild beast allowing all forms of insecure computations\nthat can read, or even worse, alter /the real world/. Writing\nto sockets, deleting files or even launching missiles, its\npossibilities are endless.  This library provides a special\nIO module that wraps all file and handle based IO operations\nfrom the System.IO module, but provides a possibility to run\nthem in an restricted environment. When running a jailed IO\ncomputation a file path can be specified all IO operations\nwill be checked against. Accessing files outside this\ndirectory is not allowed and results in a runtime error.\nAdditionally, when running a jailed IO computation a\nwhitelist of file handles can be specified that are\naccessible as well.\n\nFor example, running some code with the permission to access\nall files within (and only within) my home directory and\nallowing to access the standard output and standard error can\nbe enforced like this:\n\n> Jail.run (Just \"/home/sebas\") [stdout, stderr] yourUntrustworthyComputation\n\nOnly allowing the code to access the standard input and\nnothing else can be enforced like this:\n\n> Jail.run Nothing [stdin] yourEvenMoreUntrustworthyComputation\n\nBecause the jailed IO environment keeps track of all file\nhandles and checks that are opened by its own operations,\nsmuggling in evil file handles from the fierce and dangerous\noutside world will be punished by border patrol. Only handles\nfrom the whitelist or handles securely opened by functions\nlike `openFile' will be accepted. Because of the opaque IO\nconstructor and the restricted set of exported operations\nthis module is not easily fooled.\n\nI would almost dare to say this module is conceptually safe\nand code with the jailed IO type can blindly be trusted.\nExcept, yes unfortunately except, @unsafePerformIO@ ruins it\nall. I would almost suggest adding a flag to the compiler to\nenforce the absence of @unsafeRuinMyTypeSafety@-alike\nfunctions in order to be able to create systems in which code\ncan be trusted by its type alone.\n\nNonetheless, this module is one step forward in trusting your\nown programs. Some real <http://tinyurl.com/paranoidpeople>\nprefer writing there software in one of the most insecure\nprogramming languages and perform security audits by hand,\nI'd rather have my compiler do the job. (Anyone who wants to\naudit this library is more than welcome!)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."monads-fd" or (buildDepError "monads-fd"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      };
    }