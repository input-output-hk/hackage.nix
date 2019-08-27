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
      specVersion = "1.4";
      identifier = { name = "bindings-gts"; version = "0.1.1"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Joel Crisp <joel.a.crisp@googlemail.com>";
      author = "Joel Crisp";
      homepage = "";
      url = "";
      synopsis = "Low level bindings supporting GTS, the GNU Triangulated Surface Library";
      description = "This package contains bindings to GTS (<http://gts.sourceforge.net>)\nlibrary using bindings-DSL macros and style. Like GObject,\nit's not useful by itself, but as a foundation for other\nlibraries making use of its type system.\n\nNOTE: these bindings were not made by the author(s) of GTS\nso please don't bug them about issues with the bindings! Any\nerrors in these bindings are my responsibility not that of\nthe GTS team.\n\nChangelog:\n\n[0.0.1] Initial version.\n\n[0.0.2] Improved documentation; added some missing functions;\nfixed a function name; bumped version of base to >=4\n\n[0.0.3] Adding missing GTS enumeration for CSG boolean\noperations; added some more missing functions; fixed some bad\nFunPtr references; added some helper methods, added missing\nGTS_inline.h header to sdist archive\n\n[0.1.1] Bindings reorganized by Maurício Antunes, author\nof Bindings-DSL. Bindings much improved as a result. This\nis an incompatible API change but should be the last change\nto the package organization. Should now cover all of the GTS\nlibrary. Some features (GSList etc) moved into Bindings-GLib\n(<http://hackage.haskell.org/package/bindings-glib>)\nas they should be there.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bindings-DSL" or (buildDepError "bindings-DSL"))
          (hsPkgs."bindings-glib" or (buildDepError "bindings-glib"))
          ];
        pkgconfig = [ (pkgconfPkgs."gts" or (pkgConfDepError "gts")) ];
        };
      };
    }