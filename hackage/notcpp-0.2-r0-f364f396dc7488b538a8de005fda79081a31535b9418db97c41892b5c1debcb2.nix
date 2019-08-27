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
      identifier = { name = "notcpp"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2012 Ben Millwood";
      maintainer = "Ben Millwood <haskell@benmachine.co.uk>";
      author = "Ben Millwood <haskell@benmachine.co.uk>";
      homepage = "";
      url = "";
      synopsis = "Avoiding the C preprocessor via cunning use of Template Haskell";
      description = "notcpp is a library that attempts to provide an alternative to\nusing CPP as a mechanism for conditional compilation. It provides\nfacilities for determining if specific names or class instances\nexist and responding accordingly.\n\nWhen a value or class instance appears between minor releases of a\nthird-party package, a common way of dealing with the problem is to\nuse CPP to conditionally use one block of code or another. The\ntrouble with CPP is it's hard to statically analyse: tools based on\nhaskell-src-exts will outright refuse to parse it, for example. It\nturns out Template Haskell will do the same job in some cases.\n\nnotcpp is largely a proof-of-concept, experimental package: you\nare welcome to use it if it suits you, but it may be liable to\nchange suddenly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      };
    }