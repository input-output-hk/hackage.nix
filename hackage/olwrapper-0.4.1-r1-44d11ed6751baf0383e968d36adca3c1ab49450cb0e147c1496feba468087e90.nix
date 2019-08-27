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
    flags = { development = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "olwrapper"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tomnobleman@gmail.com";
      author = "Thomas Edelmann";
      homepage = "";
      url = "";
      synopsis = "An OpenLayers JavaScript Wrapper and Webframework with snaplet-fay";
      description = "Haskell OpenLayers Wrapper\n\n* the project has development status\n\n* the library is also the tutorial\n\n* for a full documentation please read my diploma thesis (german)\n\n* http://permalink.obvsg.at/AC12315460\n\n* http://www.edelapps.com/olwrapper/";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."fay" or (buildDepError "fay"))
          (hsPkgs."fay-text" or (buildDepError "fay-text"))
          (hsPkgs."fay-jquery" or (buildDepError "fay-jquery"))
          (hsPkgs."snap" or (buildDepError "snap"))
          (hsPkgs."snap-core" or (buildDepError "snap-core"))
          (hsPkgs."snap-server" or (buildDepError "snap-server"))
          (hsPkgs."snaplet-fay" or (buildDepError "snaplet-fay"))
          (hsPkgs."snap-loader-static" or (buildDepError "snap-loader-static"))
          (hsPkgs."snap-loader-dynamic" or (buildDepError "snap-loader-dynamic"))
          ];
        };
      exes = {
        "olwrapper" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."fay" or (buildDepError "fay"))
            (hsPkgs."fay-text" or (buildDepError "fay-text"))
            (hsPkgs."fay-jquery" or (buildDepError "fay-jquery"))
            (hsPkgs."snap" or (buildDepError "snap"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."snap-server" or (buildDepError "snap-server"))
            (hsPkgs."snaplet-fay" or (buildDepError "snaplet-fay"))
            (hsPkgs."snap-loader-static" or (buildDepError "snap-loader-static"))
            ] ++ (pkgs.lib).optional (flags.development) (hsPkgs."snap-loader-dynamic" or (buildDepError "snap-loader-dynamic"));
          };
        };
      };
    }