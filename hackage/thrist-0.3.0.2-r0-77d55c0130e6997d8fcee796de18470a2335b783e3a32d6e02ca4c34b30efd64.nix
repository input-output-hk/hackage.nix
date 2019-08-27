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
      identifier = { name = "thrist"; version = "0.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2014 Gabor Greif and Brandon Simmons";
      maintainer = "ggreif+thrist@gmail.com, brandon.m.simmons+thrist@gmail.com";
      author = "Gabor Greif, Brandon Simmons";
      homepage = "http://heisenbug.blogspot.com/search/label/thrist";
      url = "";
      synopsis = "Type-threaded list";
      description = "@Thrist@ is a list-like data structure (GADT)\nwhose elements are values of a two-parameter\ndatatype. The typing constraint ensures that\nthe second type parameter of a former value\nunifies with the first type parameter of the\nlatter.\n\nThis threading of types is the foundation for\nthrists' nice properties. E.g., paired with a\nsuitable semantics, function composition (.)\ncan be embedded.\n\nTechnically a thrist is embodying the concept\nof a /free category/.\n\nSub-modules demonstrate the power of the thrist\nidea by emulating some familiar data structures.\n\nFor further ideas, please consult the companion\n(draft) paper \\\"Thrists: Dominoes of Data\\\" at\n<http://omega.googlecode.com/files/Thrist-draft-2011-11-20.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      };
    }