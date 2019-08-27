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
    flags = { use_font_config = false; examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "FreeTypeGL"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eyal Lotem <eyal.lotem@gmail.com>";
      author = "Eyal Lotem <eyal.lotem@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Loadable texture fonts for OpenGL.";
      description = "Based on the freetype-gl library, with large\nmodifications.\n\nThis is similar to the FTGL (<http://hackage.haskell.org/package/FTGL>)\nlibrary, but avoids C++, which makes it easier to wrap and work with\nin Haskell-land.\n\nUnfortunately, it seems not to perform as well as\nFTGL on some setups.\n\nNOTE: Most of the demos and C-side documentation\nare out-of-date, as the C side was heavily\nmodified, without updating many of the demos or\nthe C documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."freetype2" or (buildDepError "freetype2"))
          (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
          ];
        libs = (pkgs.lib).optional (flags.use_font_config) (pkgs."fontconfig" or (sysDepError "fontconfig"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        };
      exes = {
        "hellobye" = {
          depends = (pkgs.lib).optionals (!(!flags.examples)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."FreeTypeGL" or (buildDepError "FreeTypeGL"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            ];
          };
        };
      };
    }