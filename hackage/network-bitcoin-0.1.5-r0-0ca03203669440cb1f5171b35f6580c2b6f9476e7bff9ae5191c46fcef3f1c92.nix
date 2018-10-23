{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "network-bitcoin";
        version = "0.1.5";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011, Michael Hendricks";
      maintainer = "Michael Hendricks <michael@ndrix.org>";
      author = "Michael Hendricks <michael@ndrix.org>";
      homepage = "http://github.com/mndrix/network-bitcoin";
      url = "";
      synopsis = "Interface with Bitcoin RPC";
      description = "This can be used to send Bitcoins, query balances, etc.  It\nrequires the Bitcoin daemon to be running and accessible via\nHTTP.\n\n> import Network.Bitcoin\n>\n> main = do\n>    balance <- getBalance auth\n>    putStrLn \$ show balance ++ \" BTC\"\n>  where\n>    auth = Auth \"http://127.0.0.1:8332\" \"user\" \"password\"\n\nTo learn more about Bitcoin, see <http://www.bitcoin.org>.\n\nChanges in v0.1.5\n\n- Correct aeson dependency\n\nChanges in v0.1.4\n\n- More accurate conversion of Bitcoin amounts from floating point";
      buildType = "Simple";
    };
    components = {
      "network-bitcoin" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.HTTP)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.base)
        ];
      };
      tests = { "test-main" = {}; };
    };
  }