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
      specVersion = "1.10";
      identifier = { name = "envparse"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "2015 Matvey Aksenov";
      maintainer = "matvey.aksenov@gmail.com";
      author = "Matvey Aksenov";
      homepage = "https://supki.github.io/envparse";
      url = "";
      synopsis = "Parse environment variables";
      description = "Here's a simple example of a program that uses @envparse@'s parser:\n\n@\nmodule Main (main) where\n\nimport Control.Monad (unless)\nimport Env\n\ndata Hello = Hello &#x7b; name :: String, quiet :: Bool &#x7d;\n\nhello :: IO Hello\nhello = Env.parse (header \\\"envparse example\\\") \$\n&#x20; Hello \\<\$\\> var (str <=< nonempty) \\\"NAME\\\"  (help \\\"Target for the greeting\\\")\n&#x20;       \\<*\\> switch                 \\\"QUIET\\\" (help \\\"Whether to actually print the greeting\\\")\n&#x20;\nmain :: IO ()\nmain = do\n&#x20; Hello &#x7b;name, quiet&#x7d; <- hello\n&#x20; unless quiet \$\n&#x20;   putStrLn (\\\"Hello, \\\" ++ name ++ \\\"!\\\")\n@\n\nThe @NAME@ environment variable is mandatory and contains the name of the person to\ngreet. @QUIET@, on the other hand, is an optional boolean flag, false by default, that\ndecides whether the greeting should be silent.\n\nIf the @NAME@ variable is undefined in the environment then running the program will\nresult in the following help text:\n\n@\nenvparse example\n&#x20;\nAvailable environment variables:\n&#x20;\n&#x20; NAME                   Target for the greeting\n&#x20; QUIET                  Whether to actually print the\n&#x20;                        greeting\n&#x20;\nParsing errors:\n&#x20;\n&#x20; NAME is unset\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }