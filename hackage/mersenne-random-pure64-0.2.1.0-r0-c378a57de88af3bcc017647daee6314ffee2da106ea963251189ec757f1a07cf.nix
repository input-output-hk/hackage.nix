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
    flags = { small_base = false; };
    package = {
      specVersion = "1.6.0";
      identifier = { name = "mersenne-random-pure64"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Don Stewart <dons00@gmail.com>";
      maintainer = "Don Stewart <dons00@gmail.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/mersenne-random-pure64/";
      url = "";
      synopsis = "Generate high quality pseudorandom numbers purely using a Mersenne Twister";
      description = "The Mersenne twister is a pseudorandom number generator developed by\nMakoto Matsumoto and Takuji Nishimura that is based on a matrix linear\nrecurrence over a finite binary field. It provides for fast generation\nof very high quality pseudorandom numbers. The source for the C code\ncan be found here:\n\n<http://www.math.sci.hiroshima-u.ac.jp/~m-mat/MT/emt64.html>\n\nThis library provides a purely functional binding to the 64 bit\nclassic mersenne twister, along with instances of RandomGen, so the\ngenerator can be used with System.Random. The generator should\ntypically be a few times faster than the default StdGen (but a tad\nslower than the impure 'mersenne-random' library based on SIMD\ninstructions and destructive state updates.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.small_base
          then [ (hsPkgs."base" or (buildDepError "base")) ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
        buildable = true;
        };
      };
    }