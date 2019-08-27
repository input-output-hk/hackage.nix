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
    flags = { cgi = false; executable = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "texmath"; version = "0.6.7"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://github.com/jgm/texmath";
      url = "";
      synopsis = "Conversion of LaTeX math formulas to MathML or OMML.";
      description = "The texmathml library provides functions to convert LaTeX\nmath formulas to presentation MathML (which can be used\nin HTML) or OMML (Office Math Markup Language, used in\nMicrosoft Office). It supports basic LaTeX and AMS\nextensions, and it can parse and apply LaTeX macros.\n\nUse the @executable@ flag to install a standalone executable,\n@texmath@, that reads a LaTeX formula from @stdin@ and\nwrites MathML to @stdout@.\n\nUse the @cgi@ flag to install a cgi script,\n@texmath-cgi@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."syb" or (buildDepError "syb"))
            ]
          else [ (hsPkgs."base" or (buildDepError "base")) ]);
        };
      exes = {
        "texmath" = {
          depends = (pkgs.lib).optionals (flags.executable) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."texmath" or (buildDepError "texmath"))
            (hsPkgs."xml" or (buildDepError "xml"))
            ];
          };
        "texmath-cgi" = {
          depends = (pkgs.lib).optionals (flags.cgi) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."texmath" or (buildDepError "texmath"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          };
        };
      tests = {
        "test-texmath" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."texmath" or (buildDepError "texmath"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      };
    }