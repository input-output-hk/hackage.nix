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
    flags = { executable = false; network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "scholdoc-texmath"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "timtylin@gmail.com";
      author = "Tim T.Y. Lin";
      homepage = "http://github.com/timtylin/scholdoc-texmath";
      url = "";
      synopsis = "Scholdoc fork of texmath";
      description = "This package is a fork of @texmath@, intended to support\nthe development of Scholdoc. It is currently just a\ntrivial fork just so it can compile against\n@scholdoc-types@ without polluting the @texmath@ package\nnamespace.\n\nThis package is currently up to date with @taxmath@\nversion 0.8\n\nThe @texmath@ library provides functions to read and write\nTeX math, presentation MathML, and OMML (Office Math\nMarkup Language, used in Microsoft Office). For\ndescriptions of the original @texmath@ package, please\nvisit <http://hackage.haskell.org/package/texmath>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."scholdoc-types" or (buildDepError "scholdoc-types"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."syb" or (buildDepError "syb"))
            ]
          else [ (hsPkgs."base" or (buildDepError "base")) ]);
        buildable = true;
        };
      exes = {
        "texmath" = {
          depends = (pkgs.lib).optionals (flags.executable) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."scholdoc-texmath" or (buildDepError "scholdoc-texmath"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."scholdoc-types" or (buildDepError "scholdoc-types"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            ] ++ (if flags.network-uri
            then [ (hsPkgs."network-uri" or (buildDepError "network-uri")) ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          buildable = if flags.executable then true else false;
          };
        };
      tests = {
        "test-texmath" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."scholdoc-texmath" or (buildDepError "scholdoc-texmath"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }