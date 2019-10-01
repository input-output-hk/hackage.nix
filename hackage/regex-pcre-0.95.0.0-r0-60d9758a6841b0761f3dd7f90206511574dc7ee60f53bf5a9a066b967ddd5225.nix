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
    flags = { pkg-config = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "regex-pcre"; version = "0.95.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2006, Christopher Kuklewicz";
      maintainer = "hvr@gnu.org";
      author = "Christopher Kuklewicz";
      homepage = "";
      url = "";
      synopsis = "PCRE Backend for \"Text.Regex\" (regex-base)";
      description = "This package provides a <http://pcre.org/ PCRE> backend for the <//hackage.haskell.org/package/regex-base regex-base> API.\n\nSee also <https://wiki.haskell.org/Regular_expressions> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."regex-base" or (buildDepError "regex-base"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."array" or (buildDepError "array"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8")) (hsPkgs."fail" or (buildDepError "fail"));
        libs = (pkgs.lib).optional (!flags.pkg-config) (pkgs."pcre" or (sysDepError "pcre"));
        pkgconfig = (pkgs.lib).optional (flags.pkg-config) (pkgconfPkgs."libpcre" or (pkgConfDepError "libpcre"));
        buildable = true;
        };
      };
    }