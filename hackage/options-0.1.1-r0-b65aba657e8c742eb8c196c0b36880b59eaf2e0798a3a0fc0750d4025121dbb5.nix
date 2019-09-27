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
      identifier = { name = "options"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/haskell-options/";
      url = "";
      synopsis = "Parsing command-line options";
      description = "The @options@ package lets library and application developers easily work\nwith command-line options.\n\nThe following example is a full program that can accept two options,\n@--message@ and @--quiet@:\n\n@\n&#x7b;-\\# LANGUAGE TemplateHaskell \\#-&#x7d;\n\nimport Options\n\ndefineOptions \\\"MainOptions\\\" \$ do\n&#x20;   stringOption \\\"optMessage\\\" \\\"message\\\" \\\"Hello world!\\\"\n&#x20;       \\\"A message to show the user.\\\"\n&#x20;   boolOption \\\"optQuiet\\\" \\\"quiet\\\" False\n&#x20;       \\\"Whether to be quiet.\\\"\n&#x20;\nmain :: IO ()\nmain = runCommand \$ \\\\opts args -> do\n&#x20;   if optQuiet opts\n&#x20;       then return ()\n&#x20;       else putStrLn (optMessage opts)\n@\n\n>\$ ./hello\n>Hello world!\n>\$ ./hello --message='ciao mondo'\n>ciao mondo\n>\$ ./hello --quiet\n>\$\n\nIn addition, this library will automatically create documentation options\nsuch as @--help@ and @--help-all@:\n\n>\$ ./hello --help\n>Help Options:\n>  -h, --help                  Show option summary.\n>  --help-all                  Show all help options.\n>\n>Application Options:\n>  --message                   A message to show the user.\n>  --quiet                     Whether to be quiet.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."monads-tf" or (buildDepError "monads-tf"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }