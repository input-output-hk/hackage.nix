{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "curlhs"; version = "0.1.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2012-2015 Krzysztof Kardzis";
      maintainer = "Krzysztof Kardzis <kkardzis@gmail.com>";
      author = "Krzysztof Kardzis <kkardzis@gmail.com>";
      homepage = "https://github.com/kkardzis/curlhs";
      url = "";
      synopsis = "bindings to libcurl, the multiprotocol file transfer library";
      description = "Package @curlhs@ provides a mid-level Haskell interface to @libcurl@,\nthe multiprotocol file transfer library which powers the popular tool\n@curl@ (please see <http://curl.haxx.se/> for more info about @curl@\nand @libcurl@). As described on the @libcurl@ project site:\n\n>\n\n/libcurl is a free and easy-to-use client-side URL transfer library,       /\n/supporting DICT, FILE, FTP, FTPS, GOPHER, HTTP, HTTPS, IMAP, IMAPS, LDAP, /\n/LDAPS, POP3, POP3S, RTMP, RTSP, SCP, SFTP, SMTP, SMTPS, TELNET and TFTP.  /\n/libcurl supports SSL certificates, HTTP POST, HTTP PUT, FTP uploading,    /\n/HTTP form based upload, proxies, cookies, user+password authentication    /\n/(Basic, Digest, NTLM, Negotiate, Kerberos), file transfer resume,         /\n/http proxy tunneling and more!                                            /\n\n/libcurl is highly portable, it builds and works identically on numerous   /\n/platforms, including Solaris, NetBSD, FreeBSD, OpenBSD, Darwin, HPUX,     /\n/IRIX, AIX, Tru64, Linux, UnixWare, HURD, Windows, Amiga, OS/\\//2, BeOs,   /\n/Mac OS X, Ultrix, QNX, OpenVMS, RISC OS, Novell NetWare, DOS and more...  /\n\n/libcurl is free, thread-safe, IPv6 compatible, feature rich, well         /\n/supported, fast, thoroughly documented and is already used by many        /\n/known, big and successful companies and numerous applications.            /\n\n>\n\nMore information about @curlhs@, such as tutorials or examples,\nmay be found in the </package/curlhs-0.1.4/docs/docs/#/README.md documentation> section.\n\nPackage is distributed under the\n<http://choosealicense.com/licenses/isc/ ISC License>\n(MIT\\/BSD-style, see </package/curlhs-0.1.4/src/LICENSE LICENSE> file for details).\n\n<<https://ga-beacon.appspot.com/UA-53767359-1/curlhs-0.1.4>>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."rtld" or (errorHandler.buildDepError "rtld"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."curlhs" or (errorHandler.buildDepError "curlhs"))
          ];
          buildable = true;
        };
      };
    };
  }