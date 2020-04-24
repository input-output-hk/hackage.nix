{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { new-base = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "curl"; version = "1.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "emertens@galois.com, diatchki@.galois.com";
      author = "Sigbjorn Finne";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to libcurl";
      description = "libcurl is a client-side URL transfer library, supporting FTP, FTPS, HTTP,\nHTTPS, SCP, SFTP, TFTP, TELNET, DICT, LDAP, LDAPS and FILE.\nlibcurl supports SSL certificates, HTTP POST, HTTP PUT, FTP uploading,\nHTTP form based upload, proxies, cookies, user+password authentication\n(Basic, Digest, NTLM, Negotiate, Kerberos4), file transfer resume,\nhttp proxy tunneling and more!\nThis package provides a Haskell binding to libcurl.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (if flags.new-base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        libs = [ (pkgs."curl" or ((hsPkgs.pkgs-errors).sysDepError "curl")) ];
        buildable = true;
        };
      };
    }