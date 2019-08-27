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
    flags = {
      have_urandom = false;
      have_ssl = false;
      have_win32_crypt = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "random-stream"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Manlio Perillo 2009";
      maintainer = "Manlio Perillo <manlio.perillo@gmail.com>";
      author = "Manlio Perillo <manlio.perillo@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "An infinite stream of random data";
      description = "Portable interface for the operating system source of pseudo\nrandom data.\nSupported sources are Unix /dev/urandom, Win32 CryptGenRandom and\nOpenSSL pseudo random numbers generator.\nThis package is based on idea from os.urandom implementation, in\nCPython.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          ];
        libs = (pkgs.lib).optionals (!flags.have_urandom) (if flags.have_ssl
          then [ (pkgs."ssl" or (sysDepError "ssl")) ]
          else (pkgs.lib).optional (flags.have_win32_crypt) (pkgs."advapi32" or (sysDepError "advapi32")));
        };
      };
    }