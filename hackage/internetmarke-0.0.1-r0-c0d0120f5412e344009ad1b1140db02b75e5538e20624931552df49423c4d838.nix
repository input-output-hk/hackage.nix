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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "internetmarke"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/internetmarke";
      url = "";
      synopsis = "Shell command for constructing custom stamps for German Post";
      description = "The German Post provides the service <http://www.internetmarke.de/>\nwhere you can order, download and print stamps in a few seconds.\nThe stamps are shipped as a PDF\nand consist of a unique Data Matrix Code and a picture to its left side.\nHowever you can only choose from a restricted number of pictures.\nMany people have asked for custom pictures on the stamps,\nbut the German Post does not like to be held responsible\nfor the pictures people may upload.\n\nWith this program you can rearrange the stamps you have downloaded,\nin case you have a label sheet which is not provided by the Post company,\nand you can add your own picture to the stamps.\nWhat about unique stamps with the Haskell logo?\n\nThe construction of the new PDF file is done using the HPDF library.\nHowever, for analysing the PDF shipped by the Post company,\nthe program invokes various other programs:\n\n* pdfimages, pdftotext from xpdf-tools.rpm\n\n* pnmtojpeg from netpbm.rpm\n\nIt's also good if you have @wget@ installed\nfor fetching the logo of the German Post.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "internetmarke" = {
          depends = [
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."HPDF" or (buildDepError "HPDF"))
            ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }