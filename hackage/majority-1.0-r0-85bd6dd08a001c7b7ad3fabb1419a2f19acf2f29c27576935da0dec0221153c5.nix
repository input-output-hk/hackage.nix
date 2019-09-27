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
      identifier = { name = "majority"; version = "1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "niswegmann@gmail.com";
      author = "Nis N. Wegmann";
      homepage = "https://github.com/niswegmann/majority";
      url = "";
      synopsis = "Boyer-Moore Majority Vote Algorithm";
      description = "The Boyer-Moore Majority Vote Algorithm determines if there in a list of votes\nis a candidate that holds more than half of the majority, and if so, finds\nthis candidate. It does so in time linear in the length of the input list and\nconstant memory. For a detailed description of the algorithm, see these papers:\n\n* Wim H. Hesselink,\n\\\"/The Boyer-Moore Majority Vote Algorithm/\\\",\n2005;\n\n* Robert S. Boyer and J. Strother Moore,\n\\\"/MJRTY - A Fast Majority Vote Algorithm/\\\",\n1982.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."haskell2010" or (buildDepError "haskell2010")) ];
        buildable = true;
        };
      };
    }