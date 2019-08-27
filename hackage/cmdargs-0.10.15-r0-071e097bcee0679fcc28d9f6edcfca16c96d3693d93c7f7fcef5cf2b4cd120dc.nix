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
    flags = { testprog = false; quotation = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "cmdargs"; version = "0.10.15"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2009-2017";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/cmdargs#readme";
      url = "";
      synopsis = "Command line argument processing";
      description = "This library provides an easy way to define command line parsers. Most users\nwill want to use the \"System.Console.CmdArgs.Implicit\" module, whose\ndocumentation contains an example.\n\n* \"System.Console.CmdArgs.Explicit\" provides a way to write command line\nparsers for both single mode programs (most programs) and multiple\nmode programs (e.g. darcs or cabal). Parsers are defined by constructing\na data structure.\n\n* \"System.Console.CmdArgs.Implicit\" provides a way to concisely define\ncommand line parsers, up to three times shorter than getopt. These parsers\nare translated into the Explicit data type.\n\n* \"System.Console.CmdArgs.GetOpt\" provides a wrapper allowing compatiblity\nwith existing getopt parsers, mapping to the Explicit data type.\n\nFor a general reference on what command line flags are commonly used,\nsee <http://www.faqs.org/docs/artu/ch10s05.html>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."process" or (buildDepError "process"))
          ] ++ (pkgs.lib).optional (flags.quotation) (hsPkgs."template-haskell" or (buildDepError "template-haskell"));
        };
      exes = { "cmdargs" = {}; };
      };
    }