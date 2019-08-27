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
      identifier = { name = "imapget"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Facundo Domínguez <facundo.dominguez@gmail.com>";
      author = "Facundo Domínguez, MarketPsych Advisor LLC";
      homepage = "";
      url = "";
      synopsis = "Downloads email from imap SSL servers.";
      description = "This programs shows how to use HaskellNet to download email from imap SSL servers.\nThe IMAP implementation is provided by HaskellNet, and the SSL implementation is\nprovided by HsOpenSSL. The program uses HsOpenSSL to forward a tcp connection on\na local port to a remote imap server and wraps the connection over SSL. HaskellNet\nsimply connects to the local port.\n\nCurrently imapget is able to list imap folders and print downloaded messages\nin the standard output.\n\nWhen run the first time, it will create a configuration file which you can edit\nto specify username, password, imap server and ports.\n\n> hostname=imap.gmail.com\n> port=993\n> username=<your imap username>\n> passwd=<your imap password>\n> ssl_wrap_port=3004\n\nssl_wrap_port is the local port used to wrap IMAP traffic over SSL.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "imapget" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."HaskellNet" or (buildDepError "HaskellNet"))
            (hsPkgs."HsOpenSSL" or (buildDepError "HsOpenSSL"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }