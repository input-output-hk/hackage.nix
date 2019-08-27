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
      specVersion = "1.2";
      identifier = { name = "select"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "2012 Gard Spreemann";
      maintainer = "Gard Spreemann <gspreemann@gmail.com>";
      author = "Gard Spreemann";
      homepage = "http://nonempty.org/software/haskell-select";
      url = "";
      synopsis = "Wrap the select(2) POSIX function";
      description = "While tinkering on a project, I frequently found myself\nhaving to make FFI calls to @select(2)@. This package provides an interface to that system call.\n\nChanges in version 0.4:\n\n* Introduce an interface to @fd_set@.\n\n* Add functions with various amounts of abstraction; in particular, 'select'''\nmatches 'select' in previous versions.\n\n* Retry @select(2)@ in case of interruption by signals.\n\n* Remove dependence on the vector package.\n\nWARNINGS:\n\n* Behavior with write and exception file descriptors is under-tested.\nFeedback is welcome.\n\n* This package is far from complete, and should be tested throughly before being relied upon.\n\nTODO:\n\n* Return the error code specified by errno if @select@ fails.\n\n* Possibly move the select retry code from C to Haskell.\n\n* Reorder functions to make the documentation more logical.\n\n* Use hsc2hs's #const to get preprocessor constants (removes some of FdSet's cbits.c).\n\n/NOTE/: I feel I'm occupying prime namespace realestate with a package name\nlike select. I'll happily let myself be chased away if someone more qualified wants\nto use this package name. Let me know.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        libs = [ (pkgs."rt" or (sysDepError "rt")) ];
        };
      };
    }