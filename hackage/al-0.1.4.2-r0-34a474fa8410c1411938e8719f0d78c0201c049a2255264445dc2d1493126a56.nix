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
    flags = { stdcall = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "al"; version = "0.1.4.2"; };
      license = "BSD-3-Clause";
      copyright = "Dimitri Sabadie";
      maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      homepage = "http://github.com/phaazon/al";
      url = "";
      synopsis = "OpenAL 1.1 raw API.";
      description = "OpenAL is a minimalistic sound API that aims to provide\nbare features for /spacialized audio/. The API looks like\nthe OpenGL one, thus the libs are pretty great together.\nUp to now, no OpenAL extension is supported. You're highly\ninvited to contribute ;).\nEAX is not supported yet either. It'll be embedded in\nfuture releases, soon.\nIn order to build and install \"al\", you'll need to have\npkg-config installed.\nFor Ubuntu users, there might be a bug with pkg-config.\nIf the install fails, consider using @cabal install al\nyour OpenAL setup is located to – you can help find that\nwith @find / -name al.h@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."OpenAL32" or (sysDepError "OpenAL32"));
        frameworks = (pkgs.lib).optionals (!system.isWindows) ((pkgs.lib).optional (system.isOsx) (pkgs."OpenAL" or (sysDepError "OpenAL")));
        pkgconfig = (pkgs.lib).optionals (!system.isWindows) ((pkgs.lib).optional (!system.isOsx) (pkgconfPkgs."openal" or (pkgConfDepError "openal")));
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        };
      };
    }