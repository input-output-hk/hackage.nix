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
      specVersion = "1.2";
      identifier = { name = "ConfigFileTH"; version = "0.2"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Ville Tirronen <ville.e.t.tirronen@jyu.fi>";
      author = "Ville Tirronen";
      homepage = "";
      url = "";
      synopsis = "Template haskell for reading ConfigFiles.";
      description = "This module provides syntax for concise definitions of config files from\nData.ConfigFile through template haskell.\nFor example, the following splice,\n\$(genConf \"Example\" [\$conf|\nelbow/center -> ec :: Double\nelbow/min    -> emi :: Double\nelbow/max    -> ema :: Double\n|])\nresolves into declaration of the following datatype\ndata Example = Example {ec  :: Double\n,emi :: Double\n,ema :: Double}\nand a function\nloadExample :: (MonadIO m) => FilePath -> m (Either CPError Example) ,\nwhich uses Data.ConfigFile to read a values for the above struct from\na file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ConfigFile" or (buildDepError "ConfigFile"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }