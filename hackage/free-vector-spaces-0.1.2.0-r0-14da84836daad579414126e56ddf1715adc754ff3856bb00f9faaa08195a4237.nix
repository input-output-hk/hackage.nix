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
      specVersion = "1.10";
      identifier = { name = "free-vector-spaces"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "(@) sagemueller \$ geo.uni-koeln.de";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/free-vector-spaces";
      url = "";
      synopsis = "Instantiate the classes from the vector-space package with types from linear";
      description = "The <http://hackage.haskell.org/package/linear/ linear> package offers efficient\nvector types — where vector means /element of a free vector space/, i.e.\nfixed-length arrays of numbers. The entire interface of that library is based on\nthis  concept of free vectors with a canonical coordinate representation.\n\nWhile this is practically speaking often useful, it is also\n\n* Questionable in terms of conceptual elegance. The idea of a vector has\noriginally not much to do with number-arrays; in physics a vector is just\na quantity with /magnitude and direction/. Only by fixing a basis can\na coordinate representation arise from that.\n\n* Not as safe as we'd like. The typical linear-algebra languages like Matlab\nor Fortran are notorious for hard-to spot mistakes that often arise from the\ntotal reliance on coordinate representations (every vector/linear map is just\na matrix of number). @linear@ already avoids most of these problems because\nit can at least check dimensions at compile-time and usually doesn't need\nany indices, but some trouble still remains. E.g., two different 3-dimensional\nspaces are indistinguishable by the type system (unless you wrap one of them\nin a @newtype@, however that also needs to be parameterised on the coordinate\ntype to work with the rest of the library).\n\nThe <http://hackage.haskell.org/package/vector-space/ vector-space> library\nhas arguably a better (albeit less complete) interface. To gain access to\nthat interface with the more efficient types from @linear@, we here provide\nthe necessary orphan instances.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."MemoTrie" or (buildDepError "MemoTrie"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }