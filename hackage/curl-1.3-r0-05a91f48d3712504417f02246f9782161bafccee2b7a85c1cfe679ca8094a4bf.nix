{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { new-base = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "curl";
        version = "1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "emertens@galois.com";
      author = "Sigbjorn Finne";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to libcurl";
      description = "libcurl is a client-side URL transfer library, supporting FTP, FTPS, HTTP,\nHTTPS, SCP, SFTP, TFTP, TELNET, DICT, LDAP, LDAPS and FILE.  libcurl supports\nSSL certificates, HTTP POST, HTTP PUT, FTP uploading, HTTP form based upload,\nproxies, cookies, user+password authentication (Basic, Digest, NTLM, Negotiate,\nKerberos4), file transfer resume, http proxy tunneling and more!\n\nThis package provides a Haskell binding to libcurl.\n";
      buildType = "Configure";
    };
    components = {
      "curl" = {
        depends  = [
          (hsPkgs.base)
        ] ++ (if flags.new-base
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.haskell98)
          ]
          else [ (hsPkgs.base) ]);
        libs = [ (pkgs."curl") ];
      };
    };
  }