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
      specVersion = "1.6";
      identifier = { name = "swapper"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010-2011, Roman Smrž";
      maintainer = "Roman Smrž <roman.smrz@seznam.cz>";
      author = "Roman Smrž";
      homepage = "http://github.com/roman-smrz/swapper/";
      url = "";
      synopsis = "Transparently swapping data from in-memory structures to disk";
      description = "This package provides a wrapper for functors, which allows their data to be\nautomatically swapped to disk and loaded back when necessary. Although\ninteraction with filesystem is required, whole interface (with exception of\ninitialization) is pure and safe as long as no external manipulation with\nused database files happens while the program is running.\nBecause only actual data, not indices (in Data.Map.Map, for example), are\nswapped and some accounting information are remembered for each item, this\nsystem is suitable mainly for situations where values are considerably\nlarger then indices. Furthermore, creating complete snapshots to a file of\nthis structure is supported; such snapshot can be then loaded, with\nindividual values being read as they are requested.\nThis package uses the Tokyo Cabinet <http://fallabs.com/tokyocabinet/>\ndatabase, which needs to be installed on the system.\nA prototype of another data structure, SwapMap, is available in the git\nrepository. It is similar to the Data.Map.Map and like Swapper allows\ntransparent swapping of data to disk, but without requiring any accessory\nfunction and with the ability to swap both elements and indices. This one\nis, however, not complete and thus not provided here.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."happstack-data" or (buildDepError "happstack-data"))
          (hsPkgs."happstack-state" or (buildDepError "happstack-state"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ];
        libs = [ (pkgs."tokyocabinet" or (sysDepError "tokyocabinet")) ];
        buildable = true;
        };
      };
    }