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
      specVersion = "1.2.3";
      identifier = { name = "HJScript"; version = "0.4.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "joel.bjornson@gmail.com,\nnibro@cs.chalmers.se";
      author = "Joel Bjornson, joel.bjornson@gmail.com,\nNiklas Broberg, nibro@cs.chalmers.se";
      homepage = "";
      url = "";
      synopsis = "HJScript is a Haskell EDSL for writing JavaScript programs.";
      description = "HJScript is a DSL built on top of HJavaScript, for writing\nclient-side dynamic web pages. The programming model is fairly\nlow-level, resembling the actual JavaScript code quite a lot,\nbut should be easy to extend with higher-level functionality.\nNotable is that HJScript supports the use of literal XML syntax,\nas defined by the hsx package, for creating DOM ElementNodes.\nAlso notable is that HJScript supports Ajax functionality.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."HJavaScript" or (buildDepError "HJavaScript"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."hsx" or (buildDepError "hsx"))
          ];
        };
      };
    }