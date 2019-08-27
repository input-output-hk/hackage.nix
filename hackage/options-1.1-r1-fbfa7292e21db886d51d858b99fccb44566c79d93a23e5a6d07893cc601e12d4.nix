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
      specVersion = "1.8";
      identifier = { name = "options"; version = "1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "John Millikin <john@john-millikin.com>";
      author = "John Millikin <john@john-millikin.com>";
      homepage = "https://john-millikin.com/software/haskell-options/";
      url = "";
      synopsis = "A powerful and easy-to-use command-line option parser.";
      description = "The @options@ package lets library and application developers easily work\nwith command-line options.\n\nThe following example is a full program that can accept two options,\n@--message@ and @--quiet@:\n\n@\nimport Control.Applicative\nimport Options\n\ndata MainOptions = MainOptions\n&#x20;   &#x7b; optMessage :: String\n&#x20;   , optQuiet :: Bool\n&#x20;   &#x7d;\n\ninstance 'Options' MainOptions where\n&#x20;   defineOptions = pure MainOptions\n&#x20;       \\<*\\> simpleOption \\\"message\\\" \\\"Hello world!\\\"\n&#x20;           \\\"A message to show the user.\\\"\n&#x20;       \\<*\\> simpleOption \\\"quiet\\\" False\n&#x20;           \\\"Whether to be quiet.\\\"\n\nmain :: IO ()\nmain = runCommand \$ \\\\opts args -> do\n&#x20;   if optQuiet opts\n&#x20;       then return ()\n&#x20;       else putStrLn (optMessage opts)\n@\n\n>\$ ./hello\n>Hello world!\n>\$ ./hello --message='ciao mondo'\n>ciao mondo\n>\$ ./hello --quiet\n>\$\n\nIn addition, this library will automatically create documentation options\nsuch as @--help@ and @--help-all@:\n\n>\$ ./hello --help\n>Help Options:\n>  -h, --help\n>    Show option summary.\n>  --help-all\n>    Show all help options.\n>\n>Application Options:\n>  --message :: text\n>    A message to show the user.\n>    default: \"Hello world!\"\n>  --quiet :: bool\n>    Whether to be quiet.\n>    default: false";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."monads-tf" or (buildDepError "monads-tf"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (!system.isWindows && (compiler.isGhc && (compiler.version).lt "7.2")) (hsPkgs."bytestring" or (buildDepError "bytestring"));
        };
      tests = {
        "options_tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."chell" or (buildDepError "chell"))
            (hsPkgs."chell-quickcheck" or (buildDepError "chell-quickcheck"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."monads-tf" or (buildDepError "monads-tf"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ] ++ (pkgs.lib).optional (!system.isWindows && (compiler.isGhc && (compiler.version).lt "7.2")) (hsPkgs."bytestring" or (buildDepError "bytestring"));
          };
        };
      };
    }