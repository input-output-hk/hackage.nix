{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "discrete"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/discrete";
      url = "";
      synopsis = "replacement for enum";
      description = "A 'Discrete' type is a set X with at least one element, along with two\nfunctions, @'succ' :: X -> 'Maybe' X@ and @'pred' :: X -> 'Maybe' X@,\nsuch that all inhabitants of the set X can be constructed given at least\na single element of the set and these two functions. The following must hold:\n\n@'pred' '>=>' 'succ' '>=>' 'pred' = 'pred'@\n\n@'succ' '>=>' 'pred' '>=>' 'succ' = 'succ'@\n\nThis means that 'Int' is a discrete type, because given any x :: 'Int', one\ncan construct any other 'Int' with the following functions:\n\n@'succ' x = if x '==' 'maxBound' then 'Nothing' else 'Just' (x '+' 1)@\n\n@'pred' x = if x '==' 'minBound' then 'Nothing' else 'Just' (x '-' 1)@\n\nThis also means that something like 'Double' is /not/ a discrete type, because\nthere are no such functions 'succ' and 'pred' that given any value of type 'Double'\ncan allow the construction of all values of type 'Double'.\n\n'Discrete' acts as a replacement for 'GHC.Enum.Enum'. The motivation for\n'Discrete' is two-fold: firstly, totality of all typeclass instances, and\nsecondly, that 'GHC.Enum.Enum' is a typeclass that does too many things,\nand does them poorly. If 'succ' or 'pred' are called on 'maxBound'\nor 'minBound', respectively, the result will be 'Nothing'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }