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
    flags = { splitinteger = true; integergmp = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "altfloat"; version = "0.2.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "nbowler@draconx.ca";
      author = "Nick Bowler";
      homepage = "http://repo.or.cz/w/altfloat.git";
      url = "";
      synopsis = "Alternative floating point support for GHC.";
      description = "A replacement for the standard Haskell floating point types and supporting\nfunctions.  There are a number of shortcomings which I feel severely hinder\nHaskell's utility for numerical computation.  These shortcomings include\n\n* There is no way to sanely convert between Haskell's floating types -- not\neven between Double and CDouble.  The implementation of the 'realToFrac'\nfunction goes through 'Rational', which loses information as 'Rational'\ncannot represent all floating point values.\n\n* Making floating types an instance of 'Ord' makes no sense.  'Ord' is for\ntotally ordered data types, which floats are not.  As a result, a number of\nlibrary functions (such as 'max' and 'sort') produce nonsensical results.\n\n* The 'Enum' instance for floating types similarly makes little sense.\nWhile 'fromEnum' and 'toEnum' functions use 'Int' instead of 'Integer',\nlimiting their usefulness, 'pred' and 'succ' can be defined in a much more\nuseful way.\n\n* Functions that should care about negative zeros, such as 'signum' and\n'abs', do not.\n\n* Some functions, such as 'floor', have nonsensical behaviour for\nnon-finite input.\n\n* The selection of floating point library functions pales in comparison to\nC.  This problem is made worse since, as noted above, it is impossible to\nconvert losslessly from 'Double' to 'CDouble' in order to use the FFI.\n\n* There is no mechanism for handling rounding modes or exceptions.\n\nThis package is intended to address all of the above issues, and more.  All\nare currently addressed except for rounding modes and exceptions.\n\nAlso provided, for convenience, is an alternative to the standard Prelude\nwhich includes features from this library and the non-overlapping parts of\nthe standard Prelude.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ] ++ (if flags.splitinteger
          then if flags.integergmp
            then [ (hsPkgs."integer-gmp" or (buildDepError "integer-gmp")) ]
            else [
              (hsPkgs."integer-simple" or (buildDepError "integer-simple"))
              ]
          else [ (hsPkgs."integer" or (buildDepError "integer")) ]);
        buildable = true;
        };
      };
    }