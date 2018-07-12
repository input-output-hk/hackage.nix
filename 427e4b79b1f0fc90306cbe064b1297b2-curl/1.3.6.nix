{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      new-base = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "curl";
          version = "1.3.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
        author = "Sigbjorn Finne";
        homepage = "";
        url = "";
        synopsis = "Haskell binding to libcurl";
        description = "libcurl is a client-side URL transfer library, supporting FTP, FTPS, HTTP,\nHTTPS, SCP, SFTP, TFTP, TELNET, DICT, LDAP, LDAPS and FILE.\nlibcurl supports SSL certificates, HTTP POST, HTTP PUT, FTP uploading,\nHTTP form based upload, proxies, cookies, user+password authentication\n(Basic, Digest, NTLM, Negotiate, Kerberos4), file transfer resume,\nhttp proxy tunneling and more!\n\nThis package provides a Haskell binding to libcurl.";
        buildType = "Configure";
      };
      components = {
        "curl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ] ++ (if _flags.new-base
            then [
              hsPkgs.base
              hsPkgs.containers
            ]
            else [ hsPkgs.base ]);
          libs = [ pkgs.curl ];
        };
      };
    }