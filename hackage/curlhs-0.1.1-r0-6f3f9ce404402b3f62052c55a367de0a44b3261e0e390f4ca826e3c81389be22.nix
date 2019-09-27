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
      specVersion = "1.6";
      identifier = { name = "curlhs"; version = "0.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright © 2012-2014 Krzysztof Kardzis";
      maintainer = "Krzysztof Kardzis <kkardzis@gmail.com>";
      author = "Krzysztof Kardzis <kkardzis@gmail.com>";
      homepage = "https://kkardzis.github.com/curlhs";
      url = "";
      synopsis = "bindings to libcurl, the multiprotocol file transfer library";
      description = "Package @curlhs@ provides a mid-level interface to @libcurl@, the\nmultiprotocol file transfer library which powers the popular tool @curl@\n(please see <http://curl.haxx.se/> for more info). As described on the\n@libcurl@'s project site (<http://curl.haxx.se/libcurl/>):\n\n/libcurl is a free and easy-to-use client-side URL transfer library,       /\n/supporting DICT, FILE, FTP, FTPS, GOPHER, HTTP, HTTPS, IMAP, IMAPS, LDAP, /\n/LDAPS, POP3, POP3S, RTMP, RTSP, SCP, SFTP, SMTP, SMTPS, TELNET and TFTP.  /\n/libcurl supports SSL certificates, HTTP POST, HTTP PUT, FTP uploading,    /\n/HTTP form based upload, proxies, cookies, user+password authentication    /\n/(Basic, Digest, NTLM, Negotiate, Kerberos), file transfer resume,         /\n/http proxy tunneling and more!                                            /\n\n/libcurl is highly portable, it builds and works identically on numerous   /\n/platforms, including Solaris, NetBSD, FreeBSD, OpenBSD, Darwin, HPUX,     /\n/IRIX, AIX, Tru64, Linux, UnixWare, HURD, Windows, Amiga, OS/\\//2, BeOs,   /\n/Mac OS X, Ultrix, QNX, OpenVMS, RISC OS, Novell NetWare, DOS and more...  /\n\n/libcurl is free, thread-safe, IPv6 compatible, feature rich, well         /\n/supported, fast, thoroughly documented and is already used by many        /\n/known, big and successful companies and numerous applications.            /\n\nPackage is distributed under ISC License (MIT/BSD-style, see LICENSE file\nfor details). It is marked as @OtherLicense@ due to limitations of Cabal.\n\n<<https://ga-beacon.appspot.com/UA-53767359-1/hackage/curlhs>>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."rtld" or (buildDepError "rtld"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }