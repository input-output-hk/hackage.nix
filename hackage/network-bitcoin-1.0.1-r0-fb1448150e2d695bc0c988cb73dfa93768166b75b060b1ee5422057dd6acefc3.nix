{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "network-bitcoin"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2012 Michael Hendricks <michael@ndrix.org>\n2012 Clark Gaebel <cgaebel@uwaterloo.ca>";
      maintainer = "Clark Gaebel <cgaebel@uwaterloo.ca>";
      author = "Michael Hendricks <michael@ndrix.org>\nClark Gaebel <cgaebel@uwaterloo.ca>";
      homepage = "http://github.com/mndrix/network-bitcoin";
      url = "";
      synopsis = "An interface to bitcoind.";
      description = "This can be used to send Bitcoins, query balances, etc.  It\nrequires the Bitcoin daemon to be running and accessible via\nHTTP.\n\n> import Network.Bitcoin\n>\n> main = do\n>    balance <- getBalance auth\n>    putStrLn \$ show balance ++ \" BTC\"\n>  where\n>    auth = Auth \"http://127.0.0.1:8332\" \"user\" \"password\"\n\nTo learn more about Bitcoin, see <http://www.bitcoin.org>.\n\nChanges in v1.0\n\n- Total overhaul of the library, with almost the complete bitcoin RPC API\ncovered.\n\n- Dependencies upgraded, and library modernized.\n\nChanges in v0.1.5\n\n- Correct aeson dependency\n\nChanges in v0.1.4\n\n- More accurate conversion of Bitcoin amounts from floating point";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }