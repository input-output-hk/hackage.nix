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
      specVersion = "1.10";
      identifier = { name = "monadlog"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "pavel@yakovlev.me";
      author = "winterland1989, zmactep";
      homepage = "";
      url = "";
      synopsis = "A simple and fast logging monad";
      description = "This package is a fork of great `monad-log`, as the original author is unreachable.\n\nIt provides a mtl style `MonadLog` class and a concrete monad transformer `LogT`, the main difference between this package and monad-logger are:\n\n* Base monad has to be an instance of `MonadIO`.\n\n* Parametrized logging environment for extensibility.\n\n* Basic logging environment type(`Label`,`Loc`,`NameSpace`,`ThreadId`) are included, and you can easily make your own.\n\n* JSON logging built-in.\n\n* default to fast-logger backend, with good stdout and file support.\n\nIf you are an application author, you can use `LogT` transformer, it's just a specialized reader monad to inject `Logger env`.\n\nIf you are a library author, you should do following two things:\n\n* make your monad stack an instance of 'MonadLog', usually you can do this by embedding `Logger env` into your monad's reader part.\n\n* provide a default formatter, and API to run with customized formatter.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-show" or (buildDepError "text-show"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      };
    }