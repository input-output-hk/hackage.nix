{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "curlhs"; version = "0.0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright © 2012 Krzysztof Kardzis";
      maintainer = "Krzysztof Kardzis <kkardzis@gmail.com>";
      author = "Krzysztof Kardzis <kkardzis@gmail.com>";
      homepage = "https://github.com/kkardzis/curlhs";
      url = "";
      synopsis = "bindings to libcurl, the multiprotocol file transfer library";
      description = "Package @curlhs@ provides a mid-level interface to @libcurl@, the\nmultiprotocol file transfer library which powers the popular tool @curl@\n(please see <http://curl.haxx.se/> for more info). As described on the\n@libcurl@'s project site (<http://curl.haxx.se/libcurl/>):\n\n/libcurl is a free and easy-to-use client-side URL transfer library,       /\n/supporting DICT, FILE, FTP, FTPS, GOPHER, HTTP, HTTPS, IMAP, IMAPS, LDAP, /\n/LDAPS, POP3, POP3S, RTMP, RTSP, SCP, SFTP, SMTP, SMTPS, TELNET and TFTP.  /\n/libcurl supports SSL certificates, HTTP POST, HTTP PUT, FTP uploading,    /\n/HTTP form based upload, proxies, cookies, user+password authentication    /\n/(Basic, Digest, NTLM, Negotiate, Kerberos), file transfer resume,         /\n/http proxy tunneling and more!                                            /\n\n/libcurl is highly portable, it builds and works identically on numerous   /\n/platforms, including Solaris, NetBSD, FreeBSD, OpenBSD, Darwin, HPUX,     /\n/IRIX, AIX, Tru64, Linux, UnixWare, HURD, Windows, Amiga, OS/\\//2, BeOs,   /\n/Mac OS X, Ultrix, QNX, OpenVMS, RISC OS, Novell NetWare, DOS and more...  /\n\n/libcurl is free, thread-safe, IPv6 compatible, feature rich, well         /\n/supported, fast, thoroughly documented and is already used by many        /\n/known, big and successful companies and numerous applications.            /\n\nPackage @curlhs@ depends on @libcurl@ as an external library. To compile\nand later use @curlhs@, it is required to first install @libcurl@ somewhere\non the system, best in place that is easy to locate by the compiler.\nInformation about how to compile and install @libcurl@ may be found on\nits project site. A simple way may be to use one of the available\nprecompiled packages.\n\nCurrent version of @curlhs@ follows @libcurl@ in version 7.25.0. It is\nalso possible to use @curlhs@ with older versions of @libcurl@, but some\nfeatures may not be available then (@curlhs@ should easily compile\nwith @libcurl@ from version 7.20.0 upward).\n\nPackage is distributed under ISC License (MIT/BSD-style, see LICENSE file\nfor details). It is marked as @OtherLicense@ due to limitations of Cabal.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.bytestring) (hsPkgs.base) (hsPkgs.time) ];
        libs = [ (pkgs."curl") ];
        build-tools = [ ((hsPkgs.buildPackages).hsc2hs) ];
        };
      };
    }