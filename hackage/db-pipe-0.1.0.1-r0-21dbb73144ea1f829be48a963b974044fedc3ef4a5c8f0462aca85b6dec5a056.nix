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
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "db-pipe"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Dmitry Zuykov 2023, (c) Anton Gushcha 2026";
      maintainer = "Anton Gushcha <ncrashed@gmail.com>";
      author = "Dmitry Zuykov";
      homepage = "https://github.com/NCrashed/db-pipe";
      url = "";
      synopsis = "A pipe-like wrapper around sqlite-simple";
      description = "@db-pipe@ wraps @sqlite-simple@ in a small monadic pipe\nabstraction: a long-lived environment (@DBPipeEnv@) owns a\nconnection, a transaction handle, and a couple of STM channels,\nand individual queries run inside a @DBPipeM@ monad that batches\n@select@, @update@, @insert@, and @ddl@ statements into explicit\ntransactional blocks (@transactional@, @transactional_@,\n@commitAll@). Originally written by Dmitry Zuykov (\"voidlizard\")\nfor the @hbs2@ project; this Hackage release is published from\n<https://github.com/NCrashed/db-pipe> so downstream projects can\ndepend on it without vendoring.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."interpolatedstring-perl6" or (errorHandler.buildDepError "interpolatedstring-perl6"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ];
        buildable = true;
      };
    };
  }