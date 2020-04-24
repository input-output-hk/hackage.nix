{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."fast-logger" or ((hsPkgs.pkgs-errors).buildDepError "fast-logger"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-show" or ((hsPkgs.pkgs-errors).buildDepError "text-show"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }