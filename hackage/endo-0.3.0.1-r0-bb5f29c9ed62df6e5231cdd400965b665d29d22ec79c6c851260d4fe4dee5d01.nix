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
    flags = { pedantic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "endo"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2016, Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško";
      homepage = "https://github.com/trskop/endo";
      url = "";
      synopsis = "Endomorphism utilities.";
      description = "Package defines extra functions for 'Data.Monoid.Endo' data type, and also\ngeneric endomorphism folding machinery. Generic endomorphism folding can be\nused for various purposes, including as a builder.\n\nHere is an example how to use it with\n<http://hackage.haskell.org/package/optparse-applicative optparse-applicative>\npackage:\n\n> data Verbosity = Silent | Normal | Verbose | Annoying\n>   deriving (Show)\n\n> data Config = Config Verbosity FilePath\n>   deriving (Show)\n\n> options :: Parser Config\n> options = runIdentityT \$ runEndo defaultConfig <\$> options'\n>   where\n>     -- All this IdentityT clutter is here to avoid orphan instances.\n>     options' :: IdentityT Parser (Endo Config)\n>     options' = foldEndo\n>         <*> outputOption     -- :: IdentityT Parser (Maybe (E Config))\n>         <*> verbosityOption  -- :: IdentityT Parser (Maybe (E Config))\n>         <*> annoyingFlag     -- :: IdentityT Parser (E Config)\n>         <*> silentFlag       -- :: IdentityT Parser (E Config)\n>         <*> verboseFlag      -- :: IdentityT Parser (E Config)\n>\n>     defaultConfig :: Config\n>     defaultConfig = Config Normal \"\"\n\n> main :: IO ()\n> main = execParser (info options fullDesc) >>= print\n\n> ghci> :main -o an.out.put --annoying\n> Config Annoying \"an.out.put\"\n\nFor details how individual option parsers look like see module\n\"Data.Monoid.Endo.Fold\" which contains other examples as well as this one.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."between" or (buildDepError "between"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          ];
        buildable = true;
        };
      };
    }