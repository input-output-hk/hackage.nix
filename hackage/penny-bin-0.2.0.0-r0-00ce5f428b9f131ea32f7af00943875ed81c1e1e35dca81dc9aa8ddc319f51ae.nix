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
    flags = { debug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "penny-bin"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2012 Omari Norman.";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/penny";
      url = "";
      synopsis = "Extensible double-entry accounting system - binary";
      description = "Penny is a double-entry accounting system. It is inspired\nby, but incompatible with, John Wiegley's Ledger, which is available\nat <http://ledger-cli.org/>. Installing this package with cabal\ninstall will install the executable program and the necessary\nlibraries. For more information, see the page for the Penny library,\nat <http://hackage.haskell.org/package/penny-lib>.\n\nPenny currently is designed only for UNIX-like operating systems.\n\nYou can install this binary simply by typing \"cabal install\npenny-bin\", which will install this binary along with all the\nnecessary dependencies. However, this will not install any of the\ndocumentation. To get the documentation, you will want to manually\ndownload the \"penny-bin-*.tar.gz\" file, available at the bottom of the\nHackage page (probably the bottom of the page you are looking at\nnow.) Alternatively, you can figure out where the \"cabal\" utility\nstored the archive file for you. After unpacking the archive you\nwill find a file, \"penny.1\", which is the manual page. You may copy\nthis file to the appropriate location on your system (maybe\n\\/usr\\/share\\/man\\/man1) or you can simply view it by giving the\nappropriate path to the UNIX \"man\" command. You will also find the\nfile \"samplePennyFile\", which will show you a sample ledger.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "penny" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."penny-lib" or (buildDepError "penny-lib"))
            ];
          buildable = true;
          };
        };
      };
    }