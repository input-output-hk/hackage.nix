{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { leafopt = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "quick-process"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Daniil Iaitkov 2025";
      maintainer = "dyaitskov@gmail.com";
      author = "Daniil Iaitskov";
      homepage = "http://github.com/yaitskov/quick-process";
      url = "";
      synopsis = "Run external processes verified at compilation/installation";
      description = "The library checks program name during compilation, generates exec spec\nto be verified in tests, before installation or before launch.\n\n== Motivation\n#motivation#\n\nThe strongest trait of Haskell language is its type system. This\npowerful type system gives infinite opportunities for experimenting with\nmapping relational entities onto application values in safer, more\ncomprehensible and maintainable ways.\n\nCompare popularity of Java and Haskell languagues and number of SOL\nlibraries in them:\n\n> > length $ words \"Hasql Beam Reigh8 postgresql-typed persistent esqueleto Opaleye Rel8 Squeal Selda Groundhog\"\n> 11\n> > length $ words \"JPA Hibernate JOOQ EJB\"\n> 4\n\nHaskell ecosystem counts 2.75 times more SQL libraries nonetheless\naccording to <https://www.tiobe.com/tiobe-index/ TIOBE index> in 2025\nJava is 20 times more popular than Haskell and by\n<https://pypl.github.io/PYPL.html PYPL> 126 times!\n\nAs far as I remember only <https://www.jooq.org/ JOOQ> resembles a type\nsafe library. Other libraries require runtime environment to check\ncompatibility of codebase with SQL queries.\n\nRDBMSs talk SQL and it are inherently text oriented for extenal clients.\nAll these Haskell libraries first of all are trying to hide plain string\nmanipulation behind type fence as deep as possible.\n\nOnce I tried had to launch an external process in a Haskell program.\nKeeping in mind the 50-200x slope on SQL arena in Haskell, I expected to\nfind at least a few libraries on <https://hackage.haskell.org/ hackage>\nproviding some type safety layer between my application and execv\nsyscall interface accepting a bare strings.\n\nThe observation above motivated me experimenting with a type safe\nwrapper for <https://hackage.haskell.org/package/process process>\nlibrary.\n\nStructure of command line arguments is way simpler than SQL. An external\nprogram can be modelled as a function with a side effect. Haskell has an\namazing library for testing functions -\n<hackage.haskell.org/package/QuickCheck QuickCheck> including impure\nones.\n\nMain concern of external programs - they are not shipped with the\napplication. Recall\n<https://en.wikipedia.org/wiki/Dependency_hell PRM hell> phrase. These\ndays situation with external explicit dependency resolution during\nsoftware installation and upgrade improved by nix and bazel. Nix and\nbazel are powerful, because they can pack\\/isolate\\/unpack the whole\ndependency universe of a single app, but they are complicated systems\nwith a steep learning curve. Plus nix is not supported on Windows.\nThat’s why they’ve got limited popularity and lot of software is still\ndistributed as a self-extracting archive assuming some dependencies are\ncompatible and preinstalled manually.\n\nExplicit list of dependencies is manually currated.\n\nLanguage does not provide out of the box solution to build such list.\nTaking into account human factor explicit list of dependencies always\nhas a chance to diverge from the full (effective) one. E.g. host system\ngot newer version of dependency which behaves differently.\n\nSoftware installation out of prebuilt executables usually don’t run\ntests.\n\n== Goals\n#goals#\n\nquick-process defines following goals:\n\n-   provide DSL for describing a call spec of an external program\n-   generate types, from the call spec, compatible with application\n    domain and arguments of an external program\n-   automatic discovery of call specs in code base\n-   check call spec compatibility during app development, testing and\n    installation\n-   process launch and mapping call spec to CreadeProcess\n\n== Call spec verification\n#call-spec-verification#\n\nOften call spec can be verified with @--help@ key terminating command\nline arguments. It’s way easier than running the program in sandbox,\nbecause no files gerenration is required and validating after effects\neither. Help key validation support can be checked.\n\n== Examples\n#examples#\n\n=== Constant argument\n#constant-argument#\n\n> {-# LANGUAGE TemplateHaskell #-}\n> module CallSpecs where\n> import System.Process.Quick\n>\n> $(genCallSpec [TrailingHelpValidate, SandboxValidate] \"date\" (ConstArg \"+%Y\" .*. HNil))\n\n> {-# LANGUAGE TemplateHaskell #-}\n> module CallSpecTest where\n>\n> import CallSpecs\n> import System.Process.Quick\n>\n> main :: IO ()\n> main = $(discoverAndVerifyCallSpecs\n>           (fromList [ TrailingHelpValidate\n>                     , SandboxValidate\n>                     ])\n>           3)\n\n> {-# LANGUAGE TemplateHaskell #-}\n> module Main where\n>\n> import CallSpecs\n> import System.Process.Quick\n>\n> main :: IO ()\n> main = callProcess Date\n\n@genCallSpec@ defines type @Date@ with nullary constructor and\n@CallSpec@ instance for it.\n\n@discoverAndVerifyCallSpecs@ discovers all types with @CallSpec@\ninstances, generates 3 values per type ande executes help key check.\nThere is not much to check besides exit code in Date spec.\n\n@callProcess@ is similar to\n<https://hackage.haskell.org/package/process/docs/System-Process.html#v:callProcess callProcess>\nfrom process library, but accepts typed input instead of strings.\n\n=== Variable argument\n#variable-argument#\n\n> {-# LANGUAGE TemplateHaskell #-}\n> module CallSpecs where\n> import System.Process.Quick\n>\n> $(genCallSpec\n>   [TrailingHelpValidate, SandboxValidate]\n>   \"/bin/cp\"\n>   (   VarArg @(Refined (InFile \"hs\") FilePath) \"source\"\n>   .*. VarArg @(Refined (OutFile \"*\") FilePath) \"destination\"\n>   .*. HNil\n>   )\n>  )\n\n> {-# LANGUAGE TemplateHaskell #-}\n> module CallSpecTest where\n>\n> import CallSpecs\n> import System.Process.Quick\n>\n> main :: IO ()\n> main = $(discoverAndVerifyCallSpecs\n>           (fromList [ TrailingHelpValidate\n>                     , SandboxValidate\n>                     ])\n>           100)\n\n> {-# LANGUAGE TemplateHaskell #-}\n> module Main where\n>\n> import CallSpecs\n> import System.Process.Quick\n>\n> main :: IO ()\n> main =\n>   callProcess $ BinCp $(refinedTH \"app.hs\") $(refinedTH \"app.bak\")\n\n@CallSpec@ of cp command requires 2 parameters and here quick-process\npower start to show up. Refined constraint InFile ensures that first\nstring is a valid file path to a Haskell source file. This part is\ndelegated to <https://hackage.haskell.org/package/refined refined>\nlibrary. HelpKey mode generates appropriate values, but they don’t point\nto real files on disk. Use Sandbox mode to actually launch process in a\ntemporary dir with real files. In Sandbox @OutFile@ cause to check that\nthe file appears on the path once process terminates.\n\n=== Subcases\n#subcases#\n\nCall spec can be composed of sum types.\n\n> {-# LANGUAGE TemplateHaskell #-}\n> module CallSpecs where\n> import System.Process.Quick\n>\n> $(genCallSpec\n>   [TrailingHelpValidate, SandboxValidate]\n>   \"find\"\n>   (   ConstArg \".\"\n>   .*. Subcases\n>         \"FindCases\"\n>         [ Subcase \"FindPrintf\"\n>           (KeyArg @(Refined (Regex \"^[%][fpactbnM%]$\") String) \"-printf\" .*. HNil)\n>         , Subcase \"FindExec\"\n>           (KeyArg @(Refined (Regex \"^(ls|file|du)$\") String) \"-exec\" .*. ConstArgs (words \"{} ;\") .*. HNil)\n>         ]\n>   .*. HNil\n>   )\n>  )\n\nNote usage of @Regex@ predicate - thanks to\n<https://hackage.haskell.org/package/refined sbv> and z3 SMT solver\nvalues satisfing arbitrary TDFA regex can be generated.\n\n=== Init Cascade\n#init-cascade#\n\nA call spec may require another command to be executed somewhere in the\npast e.g. most of git commands work only with initialize repository.\n\n> {-# LANGUAGE TemplateHaskell #-}\n> module CallSpecs where\n>\n> import CallSpecs.GitInit qualified as I\n> import System.Process.Quick\n>\n> $(genCallSpec\n>   [SandboxValidate]\n>   \"git\"\n>   (   ConstArg \"remote\"\n>   .*. StdErrMatches \"^$\"\n>   .*. StdOutMatches \"^$\"\n>   .*. Init @I.Git\n>   .*. HNil\n>   )\n>  )\n\n== Generated TH code inspection\n#generated-th-code-inspection#\n\nGHC prints generated TH code with pragma:\n\n> {-# OPTIONS_GHC -ddump-splices #-}";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."quick-process".components.sublibs.conduit-find-internal or (errorHandler.buildDepError "quick-process:conduit-find-internal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."generic-data" or (errorHandler.buildDepError "generic-data"))
          (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
          (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
          (hsPkgs."quick-process".components.sublibs.hlist-internal or (errorHandler.buildDepError "quick-process:hlist-internal"))
          (hsPkgs."monad-time" or (errorHandler.buildDepError "monad-time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."quick-process".components.sublibs.multi-containers-internal or (errorHandler.buildDepError "quick-process:multi-containers-internal"))
          (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."quick-process".components.sublibs.refined-internal or (errorHandler.buildDepError "quick-process:refined-internal"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."sbv" or (errorHandler.buildDepError "sbv"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."th-utilities" or (errorHandler.buildDepError "th-utilities"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."trace-embrace" or (errorHandler.buildDepError "trace-embrace"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
        ];
        buildable = true;
      };
      sublibs = {
        "hlist-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = true;
        };
        "multi-containers-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "conduit-find-internal" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (errorHandler.buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
            (hsPkgs."transformers-either" or (errorHandler.buildDepError "transformers-either"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ];
          buildable = true;
        };
        "refined-internal" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."these-skinny" or (errorHandler.buildDepError "these-skinny"))
          ];
          buildable = true;
        };
      };
      tests = {
        "verify-call-specs" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."quick-process" or (errorHandler.buildDepError "quick-process"))
            (hsPkgs."quick-process".components.sublibs.hlist-internal or (errorHandler.buildDepError "quick-process:hlist-internal"))
          ];
          buildable = true;
        };
        "sandbox-effect" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."quick-process" or (errorHandler.buildDepError "quick-process"))
            (hsPkgs."quick-process".components.sublibs.hlist-internal or (errorHandler.buildDepError "quick-process:hlist-internal"))
            (hsPkgs."quick-process".components.sublibs.refined-internal or (errorHandler.buildDepError "quick-process:refined-internal"))
          ];
          buildable = true;
        };
        "test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."quick-process".components.sublibs.hlist-internal or (errorHandler.buildDepError "quick-process:hlist-internal"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."quick-process".components.sublibs.refined-internal or (errorHandler.buildDepError "quick-process:refined-internal"))
            (hsPkgs."th-utilities" or (errorHandler.buildDepError "th-utilities"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
            (hsPkgs."quick-process" or (errorHandler.buildDepError "quick-process"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
          buildable = true;
        };
      };
    };
  }