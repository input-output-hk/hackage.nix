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
      specVersion = "1.8";
      identifier = { name = "ihaskell"; version = "0.2.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "andrew.gibiansky@gmail.com";
      author = "Andrew Gibiansky";
      homepage = "http://gibiansky.github.io/IHaskell/";
      url = "";
      synopsis = "A Haskell backend kernel for the IPython project.";
      description = "IHaskell is a Haskell backend kernel for the IPython project. This allows using Haskell via\na console or notebook interface. Additional packages may be installed to provide richer data visualizations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."tar" or (buildDepError "tar"))
          (hsPkgs."ghc-parser" or (buildDepError "ghc-parser"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."zeromq3-haskell" or (buildDepError "zeromq3-haskell"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          (hsPkgs."basic-prelude" or (buildDepError "basic-prelude"))
          (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."shelly" or (buildDepError "shelly"))
          (hsPkgs."system-argv0" or (buildDepError "system-argv0"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."here" or (buildDepError "here"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      exes = {
        "IHaskell" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."ghc-parser" or (buildDepError "ghc-parser"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."zeromq3-haskell" or (buildDepError "zeromq3-haskell"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."basic-prelude" or (buildDepError "basic-prelude"))
            (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."system-argv0" or (buildDepError "system-argv0"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."here" or (buildDepError "here"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (buildToolDepError "happy")))
            (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (buildToolDepError "cpphs")))
            ];
          };
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."ghc-parser" or (buildDepError "ghc-parser"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."zeromq3-haskell" or (buildDepError "zeromq3-haskell"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."basic-prelude" or (buildDepError "basic-prelude"))
            (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."system-argv0" or (buildDepError "system-argv0"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."here" or (buildDepError "here"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          };
        };
      };
    }