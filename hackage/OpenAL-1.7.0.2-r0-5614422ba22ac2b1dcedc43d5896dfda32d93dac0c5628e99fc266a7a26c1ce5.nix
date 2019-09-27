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
    flags = { usenativewindowslibraries = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "OpenAL"; version = "1.7.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2003-2015 Sven Panne";
      maintainer = "Sven Panne <svenpanne@gmail.com>, Stephen Blackheath <haskell.openal2.stephen@blacksapphire.com>";
      author = "Sven Panne";
      homepage = "https://github.com/haskell-openal/ALUT";
      url = "";
      synopsis = "A binding to the OpenAL cross-platform 3D audio API";
      description = "A Haskell binding for the OpenAL cross-platform 3D audio API,\nappropriate for use with gaming applications and many other\ntypes of audio applications.\n\nOn Windows, this package works well with the \\\"OpenAL Soft\\\" binary\ndistribution from <http://kcat.strangesoft.net/openal.html>.\nType \\'cabal install --extra-lib-dirs=\\<DIR\\>\\' where \\<DIR\\> is the\ndirectory where libOpenAL32.dll.a is located (must be an absolute path).\nThen rename soft_oal.dll to OpenAL32.dll and put it somewhere in\nthe PATH. I found that c:\\\\Windows\\\\ worked.\n\nThis package has also been tested on GNU/Linux and iOS.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."ObjectName" or (buildDepError "ObjectName"))
          (hsPkgs."StateVar" or (buildDepError "StateVar"))
          (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
          ];
        libs = if system.isWindows && flags.usenativewindowslibraries
          then [ (pkgs."OpenAL32" or (sysDepError "OpenAL32")) ]
          else (pkgs.lib).optional (!(system.isOsx || system.isIos)) (pkgs."openal" or (sysDepError "openal"));
        frameworks = (pkgs.lib).optionals (!(system.isWindows && flags.usenativewindowslibraries)) ((pkgs.lib).optional (system.isOsx || system.isIos) (pkgs."OpenAL" or (sysDepError "OpenAL")));
        buildable = true;
        };
      };
    }