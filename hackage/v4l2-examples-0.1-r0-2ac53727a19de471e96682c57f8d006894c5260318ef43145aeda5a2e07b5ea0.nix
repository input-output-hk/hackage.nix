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
      identifier = { name = "v4l2-examples"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "https://gitorious.org/hsv4l2";
      url = "";
      synopsis = "video for linux two examples";
      description = "This package contains examples for accessing v4l2 from Haskell:\n\n* v4l2-capture - dumps frames from a video device to stdout:\n\n@\$  v4l2-capture |\ny4mscaler -v0 -I ilace=none -I sar=1/1 -O chromass=420mpeg2 |\nmplayer -demuxer y4m - -vo x11@\n\nCurrently low-level imperative code; but a mid-level v4l2 library is\nplanned which will make it less horrific.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "v4l2-capture" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bindings-libv4l2" or (buildDepError "bindings-libv4l2"))
            (hsPkgs."bindings-linux-videodev2" or (buildDepError "bindings-linux-videodev2"))
            (hsPkgs."bindings-mmap" or (buildDepError "bindings-mmap"))
            (hsPkgs."bindings-posix" or (buildDepError "bindings-posix"))
            (hsPkgs."c-io" or (buildDepError "c-io"))
            (hsPkgs."ioctl" or (buildDepError "ioctl"))
            ];
          buildable = true;
          };
        };
      };
    }