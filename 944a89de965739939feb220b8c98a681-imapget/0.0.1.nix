{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "imapget";
          version = "0.0.1";
        };
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
          imapget = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.HaskellNet
              hsPkgs.HsOpenSSL
              hsPkgs.network
              hsPkgs.text
            ];
          };
        };
      };
    }