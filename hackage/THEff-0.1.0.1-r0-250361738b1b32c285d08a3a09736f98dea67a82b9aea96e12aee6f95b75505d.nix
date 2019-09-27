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
      identifier = { name = "THEff"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kolodeznydiver@gmail.com";
      author = "Kolodezny Diver";
      homepage = "";
      url = "";
      synopsis = "TH implementation of effects.";
      description = "This package implements effects, as alternative to monad\ntransformers. Actually, the effects themselves are created without\nthe use of TH, but the binding of nested effects described by\nmkEff splice. For example.\n\n> mkEff \"MyReader\"    ''Reader    ''Int       ''Lift\n> mkEff \"SomeState\"   ''State     ''Bool      ''MyReader\n> mkEff \"OtherRdr\"    ''Reader    ''Float     ''SomeState\n>\n> main:: IO ()\n> main = do\n>     r <- runMyReader  100\n>        \$ runSomeState False\n>        \$ runOtherRdr  pi  \$ do\n>             i :: Int   <- ask                    -- MyReader\n>             f :: Float <- ask                    -- OtherRdr\n>             b <- get                             -- SomeState\n>             put \$ not b                          -- SomeState\n>             lift \$ putStrLn \"print from effect!\" -- Lift\n>             return \$ show \$ fromIntegral i * f\n>     print r\n\nFor more information about extensible effects , see the original paper at\n<http://okmij.org/ftp/Haskell/extensible/exteff.pdf>.\nBut, this package is significantly different from the original.\nIt uses a chains of ordinary GADTs created by TH.\nNo Typeable, unsafe... , ExistentialQuantification ...";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }