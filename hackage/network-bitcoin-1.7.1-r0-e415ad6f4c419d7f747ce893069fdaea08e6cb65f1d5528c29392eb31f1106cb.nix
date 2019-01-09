{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "network-bitcoin"; version = "1.7.1"; };
      license = "BSD-3-Clause";
      copyright = "2012 Michael Hendricks <michael@ndrix.org>\n2013 Clark Gaebel <cgaebel@uwaterloo.ca>";
      maintainer = "Clark Gaebel <cgaebel@uwaterloo.ca>";
      author = "Michael Hendricks <michael@ndrix.org>\nClark Gaebel <cgaebel@uwaterloo.ca>";
      homepage = "http://github.com/mndrix/network-bitcoin";
      url = "";
      synopsis = "An interface to bitcoind.";
      description = "This can be used to send Bitcoins, query balances, etc.  It\nrequires the Bitcoin daemon to be running and accessible via\nHTTP.\n\n> import Network.Bitcoin\n>\n> main = do\n>    balance <- getBalance auth\n>    putStrLn \$ show balance ++ \" BTC\"\n>  where\n>    auth = Auth \"http://127.0.0.1:8332\" \"user\" \"password\"\n\nTo learn more about Bitcoin, see <http://www.bitcoin.org>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.cookie)
          (hsPkgs.attoparsec)
          (hsPkgs.unordered-containers)
          (hsPkgs.HTTP)
          (hsPkgs.http-types)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.http-client)
          ];
        };
      exes = {
        "network-bitcoin-tests" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.cookie)
            (hsPkgs.attoparsec)
            (hsPkgs.unordered-containers)
            (hsPkgs.HTTP)
            (hsPkgs.http-types)
            (hsPkgs.network)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.QuickCheck)
            (hsPkgs.http-client)
            (hsPkgs.network-bitcoin)
            ];
          };
        };
      };
    }