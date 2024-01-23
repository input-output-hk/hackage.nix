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
    flags = { pedantic = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "servant-serf"; version = "0.3.1.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "ACI Learning";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Automatically generate Servant API modules.";
      description = "= servant-serf\n\nservant-serf is a preprocessor for GHC that automatically generates Servant\nAPI modules. It is similar to the @hspec-discover@ package.\n\n== Example input\n\n> {-# OPTIONS_GHC -F -pgmF servant-serf #-}\n\n== Example output\n\n> {-# LINE 1 \"Example.hs\" #-}\n> {-# OPTIONS_GHC -w #-}\n>\n> module Example where\n>\n> import qualified Servant\n>\n> import qualified Example.One\n> import qualified Example.Two\n>\n> type API\n>   = Example.One.API\n>   Servant.:<|> Example.Two.API\n>\n> server\n>   = Example.One.server\n>   Servant.:<|> Example.Two.server\n\n== Options\n\nTo pass options into servant-serf, use @-optF@. For example:\n\n> {-# OPTIONS_GHC -F -pgmF servant-serf -optF --depth=shallow #-}\n\n- @--module-name=STRING@: Sets the name to use for the generated module. By\ndefault this is determined from the source file path. For example @src/X.hs@\nwould use the module name @X@.\n\n- @--depth=deep|shallow@: Controls whether to search through only one\ndierctory (@shallow@) or recursively (@deep@). Defaults to @deep@.\n\n- @--api-name=STRING@: Sets the name to use for the API type. Defaults to\n@API@. Note that the same name is used for both referenced API types and the\ngenerated API type.\n\n- @--server-name=STRING@: Sets the name to use for the server value. Defaults\nto @server@. Note that the same name is used for both referenced server\nvalues and the generated server value.\n\n== Notes\n\n- The input module is completely ignored.\n\n- Modules are sorted by name. There is no way to customize how they are\nsorted.\n\n- All modules below the current module are included. There is no way to\ncustomize which modules are included or excluded.\n\n- The generated server value does not have a type signature. It should have\ntype @Servant.ServerT API m@ for some @m@, but that @m@ can change and is\neasily inferred by GHC.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "servant-serf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."servant-serf" or (errorHandler.buildDepError "servant-serf"))
            ];
          buildable = true;
          };
        };
      };
    }