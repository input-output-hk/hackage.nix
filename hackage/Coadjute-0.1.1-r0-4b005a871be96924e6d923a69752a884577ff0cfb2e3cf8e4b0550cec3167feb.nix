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
      identifier = { name = "Coadjute"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Matti Niemenmaa <matti.niemenmaa+coadjute@iki.fi>";
      author = "Matti Niemenmaa";
      homepage = "http://iki.fi/matti.niemenmaa/coadjute/";
      url = "";
      synopsis = "A generic build tool";
      description = "Coadjute is a generic build tool, intended as an easier to use and more\nportable replacement for make. It's not tailored toward any particular\nlanguage, and is not meant to replace tools which target a specific\nenvironment.\n\nPortability is striven towards in two ways:\n- You don't have to deal with the idiosyncrasies of many make implementations\n(well, people don't, but they call their GNU Make files makefiles\ninstead of GNUmakefiles, which causes misunderstandings).\n- You have Haskell at your disposal, and are encouraged to use that\nwhenever possible instead of system-specific binaries like the POSIX\ncommands we all know and love.\n\nWith support for:\n- Parallel task performing.\n- Advanced out-of-dateness detection:\n- Choice between timestamps and hashes.\n- Keeping track of what arguments have been passed.\n- Haskell!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."bytestring-csv" or (buildDepError "bytestring-csv"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          ];
        };
      };
    }