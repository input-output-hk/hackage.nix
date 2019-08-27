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
      identifier = { name = "Chitra"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ckkashyap@gmail.com";
      author = "C K Kashyap";
      homepage = "http://github.com/ckkashyap/Chitra";
      url = "";
      synopsis = "Simple, VNC based graphics rendering system";
      description = "Chitra in most Indian languages means \"Image\". This aim of this project is to build an VNC library that can be used to develop interactive graphical application. What I think will be the strength of Chitra would be its \"platform independence\". So, the idea is, the library would have a \"putpixel\" function which when called would render a pixel on an image buffer that would be rendered via the vnc server. For viewing and interactive with the aplication, one would use a standard VNC client. Eventually, I might chose to do this using the RDP protocol that even has support for sound.\nTo try out -\nJust do a make and you should have the executable *Main* created.\nRun ./Main <width> <height> <port>\nNow try connecting a vnc client to localhost:5900";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      exes = {
        "Chitra" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        };
      };
    }